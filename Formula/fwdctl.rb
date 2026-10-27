class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.236"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.236/fwdctl_v0.5.236_darwin_arm64.tar.gz"
      sha256 "fb22acd428a36669587c3b97eba6bceaa46c99f1b2fe517558442611c015173d"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.236/fwdctl_v0.5.236_darwin_amd64.tar.gz"
      sha256 "0e1b131d06b41779334d65ede0f636ec851887b4ff8749b83be3801ba1a600ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.236/fwdctl_v0.5.236_linux_amd64.tar.gz"
      sha256 "8463e9c72a95f1a882da66e02c8c3d29aa788f353a4e778bbc72e9573bb75257"
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
