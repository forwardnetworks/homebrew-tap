class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.147"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.147/fwdctl_v0.5.147_darwin_arm64.tar.gz"
      sha256 "d01d8617e9f9367b348dcd8ee04612350b5b179e59a1f7db1905f0a7d50c381d"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.147/fwdctl_v0.5.147_darwin_amd64.tar.gz"
      sha256 "a4a3b8e820db1143caa560f80bc37f34f048f7d360b45904f95e9df729e6d1d0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.147/fwdctl_v0.5.147_linux_amd64.tar.gz"
      sha256 "7f2b1cca475390c6c8685eac30d33dc81f908b013585fbafd0614fa418672889"
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
