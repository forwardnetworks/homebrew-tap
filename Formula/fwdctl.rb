class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.307"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.307/fwdctl_v0.5.307_darwin_arm64.tar.gz"
      sha256 "c940ce2ddaa0fc79e7fb1f0ca62ac7ff6536b26c536b9ba95f175e7ba4017062"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.307/fwdctl_v0.5.307_darwin_amd64.tar.gz"
      sha256 "766b9f3674e224aa8022eaee4aaf13374d5ec7f933dfc8af05c5fe7ddbc2fbeb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.307/fwdctl_v0.5.307_linux_amd64.tar.gz"
      sha256 "ccfc02dfade6d5cf87dd90a963cf2c4b2fc3f8d3d4d9de2428499ab586314451"
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
