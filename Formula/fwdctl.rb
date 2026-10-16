class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.135"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.135/fwdctl_v0.5.135_darwin_arm64.tar.gz"
      sha256 "91c0b38d88e2c6062de0454fd5066b3f49298136855fe36c059d31b781c0ced8"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.135/fwdctl_v0.5.135_darwin_amd64.tar.gz"
      sha256 "1e890d5762eac6f7e682d6f8620039237f32e19da9d893c1243c1c920020af1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.135/fwdctl_v0.5.135_linux_amd64.tar.gz"
      sha256 "290bff2a9fcc4d4ec1b1ca30085afbe6fe35db84ec55047fd0b11e805195b075"
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
