class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.163"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.163/fwdctl_v0.5.163_darwin_arm64.tar.gz"
      sha256 "93e5c8939e4c02346b263d5cec8f1c219532c8c281439d2ec9e373a93923a53f"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.163/fwdctl_v0.5.163_darwin_amd64.tar.gz"
      sha256 "758f369c0621ee3e8040e2f85d86098b1b5dd4ec405e82351c61280d62413213"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.163/fwdctl_v0.5.163_linux_amd64.tar.gz"
      sha256 "0fe73a61bb1436e1026609302d569ec4ac05b77b05652449966e9841aea38c25"
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
