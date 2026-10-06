class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.86"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.86/fwdctl_v0.5.86_darwin_arm64.tar.gz"
      sha256 "35fc2e39a5f82370deffa4a5ecece8cb5c263d8735b8c6ecdd3041fe4111b5d1"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.86/fwdctl_v0.5.86_darwin_amd64.tar.gz"
      sha256 "092fa22bf50e02a55d0f9b7823a97d1d1e824afd6d3f6b361e36097d97f5530c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.86/fwdctl_v0.5.86_linux_amd64.tar.gz"
      sha256 "213c48d737bb7b798681d2780f5bf8771953b13caa7b92a1371068b805a2c8fa"
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
