class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.103"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.103/fwdctl_v0.5.103_darwin_arm64.tar.gz"
      sha256 "9edd6171aebddb4f648f5e0d516c61c2c20ad99066fd15e087eb6d8e36c4fc4b"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.103/fwdctl_v0.5.103_darwin_amd64.tar.gz"
      sha256 "2bb6a096509caca010907b6ac71c96aa8bf61b44029b1a3dc0a4f4eaff85454d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.103/fwdctl_v0.5.103_linux_amd64.tar.gz"
      sha256 "c13d2bbe41f4f7530b822f7283b7834b92e6c4ca43df29d876f442e7f9771a9f"
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
