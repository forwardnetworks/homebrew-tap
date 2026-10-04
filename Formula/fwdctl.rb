class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.71"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.71/fwdctl_v0.5.71_darwin_arm64.tar.gz"
      sha256 "d0e787a3332039d8ed899ae97c7a562af09fb4237184c8812df7df06ec36fde8"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.71/fwdctl_v0.5.71_darwin_amd64.tar.gz"
      sha256 "c0c124eea8f3bacabea8b863b1569bdf33512df65e52ce36a3b255455cd73b59"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.71/fwdctl_v0.5.71_linux_amd64.tar.gz"
      sha256 "ec964963d505d7941418aa21a0c39faccce7edf9a5d8cfe05907aff2d0a96590"
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
