class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.56"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.56/fwdctl_v0.5.56_darwin_arm64.tar.gz"
      sha256 "4e7e7cfe8965c95a0e44b7da21482850ef1adf9021c9629adb5ac9bcb1801fcd"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.56/fwdctl_v0.5.56_darwin_amd64.tar.gz"
      sha256 "102ec94cbd336b25ca4e4b8300d5855bc56b27888403ff8dc7d83036066d0c4c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.56/fwdctl_v0.5.56_linux_amd64.tar.gz"
      sha256 "34f71c14058e2fbc04ecca4e892a22e34a00cc9c14ece272c21265f3a007cb07"
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
