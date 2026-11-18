class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.335"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.335/fwdctl_v0.5.335_darwin_arm64.tar.gz"
      sha256 "80be33e953197d0a84b7f91db7b0a383d1f23590fed7926954437f198e03c8f0"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.335/fwdctl_v0.5.335_darwin_amd64.tar.gz"
      sha256 "26cdb9cec820b889e0f3c7d84add3efc3b2296084f31cea27e7bd3c403429745"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.335/fwdctl_v0.5.335_linux_amd64.tar.gz"
      sha256 "11e182f16681499a2cb8330e915c3ab7ade7856f2a80e0ad9b723b149cd43448"
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
