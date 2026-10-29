class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.256"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.256/fwdctl_v0.5.256_darwin_arm64.tar.gz"
      sha256 "5062bba8f843c2143a20a84b5cde73fa4a33f029b1d9e93138c4ec64b67dcfc9"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.256/fwdctl_v0.5.256_darwin_amd64.tar.gz"
      sha256 "3515c77d3ce0b3e1716b3811f798e0e9e509bee561945e37def4e9039d8b2bea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.256/fwdctl_v0.5.256_linux_amd64.tar.gz"
      sha256 "6f9ef20b4a2cb3cd682a6c4519d6372d4917d29d1a5e62742b4d40e6bdde8028"
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
