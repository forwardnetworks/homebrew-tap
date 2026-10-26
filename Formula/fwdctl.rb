class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.219"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.219/fwdctl_v0.5.219_darwin_arm64.tar.gz"
      sha256 "3167fd521aa3ce07a280c995a05ac2f130e709208b46dc68afae7c20a3e97476"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.219/fwdctl_v0.5.219_darwin_amd64.tar.gz"
      sha256 "4097d519c6f529a4d2b4b20596906e28472366963b116ed3048a463337d79c65"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.219/fwdctl_v0.5.219_linux_amd64.tar.gz"
      sha256 "d789d44ac1a248838c83d61ec615426d8390a607bd45391fb85b42ed99b2d8dd"
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
