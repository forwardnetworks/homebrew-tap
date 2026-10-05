class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.79"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.79/fwdctl_v0.5.79_darwin_arm64.tar.gz"
      sha256 "d3885c5c6cdc76d684847f1fda43c584b97d7466ebb5618b5e44c179c5f6c6da"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.79/fwdctl_v0.5.79_darwin_amd64.tar.gz"
      sha256 "f8280f2df7bf990597906c0459312fa094ee64196c7dbeb40d957f4741246158"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.79/fwdctl_v0.5.79_linux_amd64.tar.gz"
      sha256 "3a9dcdef3c80f7a9207fcb42c5dd8d1da64e6e8dbdb654c784be324f9391e1a5"
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
