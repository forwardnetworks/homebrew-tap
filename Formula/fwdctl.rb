class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.171"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.171/fwdctl_v0.5.171_darwin_arm64.tar.gz"
      sha256 "e3355a4b506d7f28daf8fa26c988cc532ecc2544f80091d360f929edbed1d85a"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.171/fwdctl_v0.5.171_darwin_amd64.tar.gz"
      sha256 "61acc70bfcb253cb6e35f478665499a0092a5f41b4acb777bf854125df55e5ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.171/fwdctl_v0.5.171_linux_amd64.tar.gz"
      sha256 "e1ad16bee3de6f0e8f0e9bf144a33ea637a362ef333c7c751415c647d8072afb"
    end
  end

  def install
    bin.install "fwdctl"
    generate_completions_from_executable(bin/"fwdctl", "completion")
    man1.install Dir["man/*.1"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fwdctl --version")
  end
end
