class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.231"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.231/fwdctl_v0.5.231_darwin_arm64.tar.gz"
      sha256 "da40fab28e0480f9f638f86d930e3f2cc4711614f88ba766818c47b3bcad7621"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.231/fwdctl_v0.5.231_darwin_amd64.tar.gz"
      sha256 "5b014716864848570bca8b2af70fb82a3117a77dff66a14a94f634ee194f59a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.231/fwdctl_v0.5.231_linux_amd64.tar.gz"
      sha256 "af26628f174767ddd84f1876ac6c451ab6ab3a259b63d7f61c902411a37f0186"
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
