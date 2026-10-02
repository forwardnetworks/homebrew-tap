class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.50"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.50/fwdctl_v0.5.50_darwin_arm64.tar.gz"
      sha256 "2247d381abefbe873fe07ca50a2981fa29245ea82bae2ba3077336cfb5246b0e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.50/fwdctl_v0.5.50_darwin_amd64.tar.gz"
      sha256 "a8c48eb87c31841a72bb44661dd73a7a568f47b5943d73b3d5e50830ef85cfec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.50/fwdctl_v0.5.50_linux_amd64.tar.gz"
      sha256 "ce2179d0ec4f3908ea2ef6a1ae204a39a92bff990c96021a96d3ad73c8edcab9"
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
