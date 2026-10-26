class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.218"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.218/fwdctl_v0.5.218_darwin_arm64.tar.gz"
      sha256 "89c388522c6eed35586e8fd321c86dfab9dceba2153bea1d006827886a33bd28"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.218/fwdctl_v0.5.218_darwin_amd64.tar.gz"
      sha256 "286545b7cbc46a65f6e709aae84499190d4ab9b1f7c57927eb404ea461f0084d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.218/fwdctl_v0.5.218_linux_amd64.tar.gz"
      sha256 "2e4fde8ff5589a43ad7e3c01724ed9907dcba9160b9073a5cccdd5256e43a6fa"
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
