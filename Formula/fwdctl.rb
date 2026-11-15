class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.320"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.320/fwdctl_v0.5.320_darwin_arm64.tar.gz"
      sha256 "f9ff013f16b90ee09cab753bc9fbf2409d6a3341cb1725ee5074c62052e0cb3e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.320/fwdctl_v0.5.320_darwin_amd64.tar.gz"
      sha256 "b6cfd75948d13ae2fc7b5b94c5bdd87ab513a7ba5a5da8306b781d7a4c4db486"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.320/fwdctl_v0.5.320_linux_amd64.tar.gz"
      sha256 "2b57c5cb2c75d034b279c13b8390ce00038347f0b67fe34ec54baf6084da674b"
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
