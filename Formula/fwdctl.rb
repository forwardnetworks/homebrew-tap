class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.126"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.126/fwdctl_v0.5.126_darwin_arm64.tar.gz"
      sha256 "f3bbffae8651a0e100bcd0a357d8178fe4ea77fe7cf13354077103a83ee0534f"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.126/fwdctl_v0.5.126_darwin_amd64.tar.gz"
      sha256 "645db409276fa6af12e0303b6de07cea4921d6393d1d530c84a96a7025c0d325"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.126/fwdctl_v0.5.126_linux_amd64.tar.gz"
      sha256 "1c134953eb570dfe481356e1a8bec2dd790f15846f8b5e722324209d276bc8c5"
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
