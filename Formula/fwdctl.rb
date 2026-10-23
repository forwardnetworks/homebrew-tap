class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.204"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.204/fwdctl_v0.5.204_darwin_arm64.tar.gz"
      sha256 "302e1aeb9fca962585bca9ae25c8e1f5692ab1c0484621a027cb7292caab98c9"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.204/fwdctl_v0.5.204_darwin_amd64.tar.gz"
      sha256 "524f669dc2e7eba119190920dbd27d8c425a51d174e9ff0765dc8b2d5215f77a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.204/fwdctl_v0.5.204_linux_amd64.tar.gz"
      sha256 "b2705ea665a6758b6e463d8bb1e9e936c5abd0d14554cfcf41ffd5f241e16f0f"
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
