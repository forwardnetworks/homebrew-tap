class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.226"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.226/fwdctl_v0.5.226_darwin_arm64.tar.gz"
      sha256 "e74ae54fd856516e08c4fc1bcce06ad0b24bbf80a4d8053f2aab073d5968f2c5"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.226/fwdctl_v0.5.226_darwin_amd64.tar.gz"
      sha256 "88047e7e539822913350db6eedc217193d5f6d2a8f50d606767bf4873967fecb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.226/fwdctl_v0.5.226_linux_amd64.tar.gz"
      sha256 "755394678847db23d2dd5fe24544500f14db4913c48507405516530617f3ede6"
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
