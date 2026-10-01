class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.40"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.40/fwdctl_v0.5.40_darwin_arm64.tar.gz"
      sha256 "f88ef80f31376da393e0f4eacf1df1107cef60a0abf7e58d11feb7782851aacb"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.40/fwdctl_v0.5.40_darwin_amd64.tar.gz"
      sha256 "d3393889f1c9fd0d038a4624a09ce2c566af4b46064f9b71c59b070a3bc5dccb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.40/fwdctl_v0.5.40_linux_amd64.tar.gz"
      sha256 "c595c193aac9a0b3c50795004bddf55027408cf0cddfef8d076c2ee91ac17af1"
    end
  end

  def install
    bin.install "fwdctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fwdctl --version")
  end
end
