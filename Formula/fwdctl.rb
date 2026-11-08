class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.300"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.300/fwdctl_v0.5.300_darwin_arm64.tar.gz"
      sha256 "d07eddd7ee75ac2c61f613f8e248c9f0d408a0089c0a6d99d4d9fd7bb1e35922"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.300/fwdctl_v0.5.300_darwin_amd64.tar.gz"
      sha256 "9daa9a74b66ae12493a6ed02e75022223cec37ca7182a79c47746ead49916861"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.300/fwdctl_v0.5.300_linux_amd64.tar.gz"
      sha256 "728cb6ca06d9bea9b323bed87f4e4d2f6839314223609ef61d6d2e4340413d1c"
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
