class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.112"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.112/fwdctl_v0.5.112_darwin_arm64.tar.gz"
      sha256 "8625b7f39bf015874a70e5803f32680036566dfddb03de638e99ecb4b17ceabf"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.112/fwdctl_v0.5.112_darwin_amd64.tar.gz"
      sha256 "56fcd7d4aea874d99ec4357b432315e93db851f881393fc64508f818280e098f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.112/fwdctl_v0.5.112_linux_amd64.tar.gz"
      sha256 "34ffea393bba815dffcb360f17261a2300673c1da9903f492cee4f6edd990ad5"
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
