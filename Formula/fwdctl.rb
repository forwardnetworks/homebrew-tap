class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.188"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.188/fwdctl_v0.5.188_darwin_arm64.tar.gz"
      sha256 "6078d468552d0561ead0a1f83501cb47c240bce6dbd0b7de7a992211f969dee3"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.188/fwdctl_v0.5.188_darwin_amd64.tar.gz"
      sha256 "48f13348e186a1b2e623fcd3b1dc67733f6bf0392c60e1c0c0c19939834557ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.188/fwdctl_v0.5.188_linux_amd64.tar.gz"
      sha256 "2bb1dbcadee1426b25e85ace4741afb275820ca33cf2ff21258ab0d4778705b7"
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
