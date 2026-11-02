class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.267"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.267/fwdctl_v0.5.267_darwin_arm64.tar.gz"
      sha256 "a6c78903260db7b8e92595646806a27c75d83b17b2de0cb93d9b815ad648859b"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.267/fwdctl_v0.5.267_darwin_amd64.tar.gz"
      sha256 "2b878546ad51b141e3a14020b4e84598858c46497bf1199c1816556831838966"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.267/fwdctl_v0.5.267_linux_amd64.tar.gz"
      sha256 "d9b2f408fe928cab94690aeb36e98b3cbf19415c334ffa987feb42d16094315a"
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
