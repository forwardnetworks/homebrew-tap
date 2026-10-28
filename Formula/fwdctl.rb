class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.247"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.247/fwdctl_v0.5.247_darwin_arm64.tar.gz"
      sha256 "f6abd6c71b20cc275277ca91676b2e393dc4eaefcc8487bd15e729258973112f"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.247/fwdctl_v0.5.247_darwin_amd64.tar.gz"
      sha256 "7abc4b9df1ea0714289f4ec46ab88f97516bf0191ab7fa96fb1e57a0a80a6555"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.247/fwdctl_v0.5.247_linux_amd64.tar.gz"
      sha256 "23717b8265cc6d0647039f73d26a413cb01281a3c89b3b7ec82a91ab1cbb17c4"
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
