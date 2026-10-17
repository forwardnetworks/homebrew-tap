class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.146"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.146/fwdctl_v0.5.146_darwin_arm64.tar.gz"
      sha256 "d39db029141805b9eb496f15634d88e59b281f17280a6e5af66939a45e155da2"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.146/fwdctl_v0.5.146_darwin_amd64.tar.gz"
      sha256 "fd61d0e33e6a3ffea56abd418a41d6bb3cd6b2557f42b5e6ef28fa6b2173a8c6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.146/fwdctl_v0.5.146_linux_amd64.tar.gz"
      sha256 "b0ca953e12e2eb74ebaa30cda1ea202cee644b78915b30507de3023427aac2b3"
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
