class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.83"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.83/fwdctl_v0.5.83_darwin_arm64.tar.gz"
      sha256 "c8320d490a0b6c05a8187c2c2c523e7104c541b028d2a129bd395629ea064c99"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.83/fwdctl_v0.5.83_darwin_amd64.tar.gz"
      sha256 "b65ffe87a9c6da3263b2e71ff78569c9c7693040ffbaa0a66b6845c5e028868b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.83/fwdctl_v0.5.83_linux_amd64.tar.gz"
      sha256 "b7e2a7861c35943fa9dcc33a91e15b33d109ddd8776f0fb7a1051f9343c0a5a5"
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
