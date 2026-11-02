class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.262"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.262/fwdctl_v0.5.262_darwin_arm64.tar.gz"
      sha256 "7bbfa73e64cd8f6c32768cc41a33da61d7e757332dc9dd67cc4c0b116eaba4b2"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.262/fwdctl_v0.5.262_darwin_amd64.tar.gz"
      sha256 "38ad6439b352d43b09de9a645d5bfe46785a6c033cc913cc3d3269a9b208ed21"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.262/fwdctl_v0.5.262_linux_amd64.tar.gz"
      sha256 "7035a8e08a22d84b7f68796f45af90ffb082c42862aef2d574153c8b236f9480"
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
