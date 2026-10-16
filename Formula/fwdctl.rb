class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.131"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.131/fwdctl_v0.5.131_darwin_arm64.tar.gz"
      sha256 "94be78c68347332fc7a8583eb5fb76a5b10004d38ceaf0ccef6c4b9bc2abcce2"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.131/fwdctl_v0.5.131_darwin_amd64.tar.gz"
      sha256 "00916aaeba829ea4e15388b46f7bcd320d2da633b14531f95ceaa84da795b07e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.131/fwdctl_v0.5.131_linux_amd64.tar.gz"
      sha256 "4825357ee396e2da24f90ddd92b1dcc2521956921646a76ec552b5494d933d6b"
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
