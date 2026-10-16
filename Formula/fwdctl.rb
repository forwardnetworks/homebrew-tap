class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.138"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.138/fwdctl_v0.5.138_darwin_arm64.tar.gz"
      sha256 "1e4039d5e6fd3d5c6b2667637e2abb46dca2c3019768bcf7401260703cbf1be0"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.138/fwdctl_v0.5.138_darwin_amd64.tar.gz"
      sha256 "7be112bbf02bbe7289eb1929f094d9c7057f3a8a922eed26a033811cc2b43f53"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.138/fwdctl_v0.5.138_linux_amd64.tar.gz"
      sha256 "0194a9f99c65b70debe41fce91957b68ae037bcce305e9c7945290aab8b888d5"
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
