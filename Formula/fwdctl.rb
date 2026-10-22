class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.196"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.196/fwdctl_v0.5.196_darwin_arm64.tar.gz"
      sha256 "785851da964be421c690d2ca4ddc218f3ee0dd4de6d03a6d0d18f2ef109ad823"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.196/fwdctl_v0.5.196_darwin_amd64.tar.gz"
      sha256 "f26c3a9ff5ab26f5e02e319419e957b954ec585b2c9b69d3199583309152523d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.196/fwdctl_v0.5.196_linux_amd64.tar.gz"
      sha256 "8f98a227f357e0ac2213f867b667a6257b65233ede6e07dd7b6b8d9efac6203f"
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
