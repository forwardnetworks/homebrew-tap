class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.104"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.104/fwdctl_v0.5.104_darwin_arm64.tar.gz"
      sha256 "4f2dd896ce9ec77522bf1b8504933ae85b393255af1cbb13b1cb262aeed88651"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.104/fwdctl_v0.5.104_darwin_amd64.tar.gz"
      sha256 "cfb94024c2a442ebf9a2eac8b4719902c70d04aa599cfe27ae69f6e31ceb562f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.104/fwdctl_v0.5.104_linux_amd64.tar.gz"
      sha256 "03d7d79c1b967df696b072f6bdb50f3908ebb60e8208e4e2df72ec2a827e6f5d"
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
