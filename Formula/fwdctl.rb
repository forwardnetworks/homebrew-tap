class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.265"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.265/fwdctl_v0.5.265_darwin_arm64.tar.gz"
      sha256 "99be28dca9a4a4bdf8b4e1f92555fd6557406812bf043fa4e89d7ebfb0d3af9f"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.265/fwdctl_v0.5.265_darwin_amd64.tar.gz"
      sha256 "4a88820d9992bd963d5a78dcd112b8eb723bb1e726e3f50ac06838e7ffd0a83d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.265/fwdctl_v0.5.265_linux_amd64.tar.gz"
      sha256 "7d7d6063f37ba5e61265d9d2f2d6ea67a4871e7f9023f9b7c6e82d2c3c29f40f"
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
