class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.273"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.273/fwdctl_v0.5.273_darwin_arm64.tar.gz"
      sha256 "242ae85c9483fef43f9721338fe1165d066805c2c27ed9a635adc9422a7a06f3"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.273/fwdctl_v0.5.273_darwin_amd64.tar.gz"
      sha256 "2dfd66241422a220229cca5325208fa6d1d75b1c185d07b08c06c7261eb9962c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.273/fwdctl_v0.5.273_linux_amd64.tar.gz"
      sha256 "3f5e40aadb7037adf36c8fcc4d17275580e14916695cbbd18f79d55cf3c24793"
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
