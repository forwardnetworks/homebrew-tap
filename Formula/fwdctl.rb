class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.354"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.354/fwdctl_v0.5.354_darwin_arm64.tar.gz"
      sha256 "f757b75bd08a29f68673b8de68dd3e724010c86308535488ef9236d7b414d5f8"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.354/fwdctl_v0.5.354_darwin_amd64.tar.gz"
      sha256 "47e8e2689feac92af9acec8ca227d124862693d4fdd5e1b749b7f7c982efe225"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.354/fwdctl_v0.5.354_linux_amd64.tar.gz"
      sha256 "5d57602faa10ef31dfb265a181c4ba0f767e7baad22863f3ebcd9f4bb3490f51"
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
