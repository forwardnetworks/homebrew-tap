class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.90"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.90/fwdctl_v0.5.90_darwin_arm64.tar.gz"
      sha256 "6fe8fd61c84e566ea85292b0a3c07c1d572caa4acdff32d5430b278f85019bf3"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.90/fwdctl_v0.5.90_darwin_amd64.tar.gz"
      sha256 "8425ee46ff9e7351dec8093386cc98c43e444661d2c04991713384516c23070f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.90/fwdctl_v0.5.90_linux_amd64.tar.gz"
      sha256 "4d81fe5dc8bf00dc7df8c5ecc03f95500eace6025d00b80fcc9e20d92ca5ca5b"
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
