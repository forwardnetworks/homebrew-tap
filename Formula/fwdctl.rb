class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.53"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.53/fwdctl_v0.5.53_darwin_arm64.tar.gz"
      sha256 "5bbdaa150b314fcef114c7225e3527fd3868c6e5182c6803689337592539e934"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.53/fwdctl_v0.5.53_darwin_amd64.tar.gz"
      sha256 "52a7e3b43a6f15abe70faba7be4ceeec884d6433b64afa42b63f218a1af31a97"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.53/fwdctl_v0.5.53_linux_amd64.tar.gz"
      sha256 "7255bc621364aeaa72815fcf91640e95a5cc8da2c3e1c3547c3ad0cf63c5e936"
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
