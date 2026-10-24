class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.207"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.207/fwdctl_v0.5.207_darwin_arm64.tar.gz"
      sha256 "775654ab6dc666bfb02dcc7448e65ca6e4c6a78c87f98e25066a2fabc0c8bc8c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.207/fwdctl_v0.5.207_darwin_amd64.tar.gz"
      sha256 "5298500d39b80dcf2858d2b0e3304bdeea98f5c74050595150cf81d264d324ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.207/fwdctl_v0.5.207_linux_amd64.tar.gz"
      sha256 "208e6e3638e7f90cf079592456aac12c37629544f2017386b6f9686a7fb105d6"
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
