class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.246"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.246/fwdctl_v0.5.246_darwin_arm64.tar.gz"
      sha256 "67a9d5c0a1dc49dddc20e36307d6c80bb91e5b629f447d63644ea191fd763939"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.246/fwdctl_v0.5.246_darwin_amd64.tar.gz"
      sha256 "b9a0f4ea6b555b044129bf9750f4ef826bb9caa6a483254df6a0e5e77fc48492"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.246/fwdctl_v0.5.246_linux_amd64.tar.gz"
      sha256 "356432956d108dbb94968146c05ddcb6a768fd7785df22301d50a98c27a68525"
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
