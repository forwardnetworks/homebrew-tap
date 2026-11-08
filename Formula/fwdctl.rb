class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.299"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.299/fwdctl_v0.5.299_darwin_arm64.tar.gz"
      sha256 "29bc1735112e910dc7ae541aac1f87db27a26ff27bad189dbe5360c516f44ae4"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.299/fwdctl_v0.5.299_darwin_amd64.tar.gz"
      sha256 "19419056e9214c704a6708b15e278726e564c5212d40698a679df3f23b171096"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.299/fwdctl_v0.5.299_linux_amd64.tar.gz"
      sha256 "b81ec851e65c9c263ffd2368ae2cd2996b3b7958e86542c08e2a2003911b393e"
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
