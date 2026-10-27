class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.225"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.225/fwdctl_v0.5.225_darwin_arm64.tar.gz"
      sha256 "0c71975631aa2c552c0c75f22b3423b68d42bf76073b5fb1efd63b2bd0121337"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.225/fwdctl_v0.5.225_darwin_amd64.tar.gz"
      sha256 "331f72edf0d62ce0ffafbadc4aa6b86ec2d29058e081aec15445bc74b3bf3da5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.225/fwdctl_v0.5.225_linux_amd64.tar.gz"
      sha256 "d514fdf266231154944498af9574e015388d8ed61bbf88f39638ac2c51280dee"
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
