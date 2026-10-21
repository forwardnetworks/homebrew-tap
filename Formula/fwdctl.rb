class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.185"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.185/fwdctl_v0.5.185_darwin_arm64.tar.gz"
      sha256 "568e66c4b080a486758f596eae962e9538ea6310fb3f6369ce7cea9e680e9b35"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.185/fwdctl_v0.5.185_darwin_amd64.tar.gz"
      sha256 "2a9b9e442f8aba045b9920136712b4fda159a101ce8774fa5a192df7f0fc8779"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.185/fwdctl_v0.5.185_linux_amd64.tar.gz"
      sha256 "6451084ed86fcc51b2bc85adb5bc4244b48fa4fa5692e62f8807ffe73fbdb3e0"
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
