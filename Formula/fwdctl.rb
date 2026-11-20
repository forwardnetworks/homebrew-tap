class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.362"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.362/fwdctl_v0.5.362_darwin_arm64.tar.gz"
      sha256 "7912276f7c5763b14d9269e4ca4a217828e88b10057f3ebcb4ef19d81e179ee4"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.362/fwdctl_v0.5.362_darwin_amd64.tar.gz"
      sha256 "a986eb9623f011ad70f4fd1ffbf3757ed42af1f887b31b2157f45eee7cbd0c1c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.362/fwdctl_v0.5.362_linux_amd64.tar.gz"
      sha256 "00bfb4cb232d7bd55cd40111de9f4bf2c14708dda9e0ec23d82bbefa99d2a38c"
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
