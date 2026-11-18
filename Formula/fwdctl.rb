class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.347"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.347/fwdctl_v0.5.347_darwin_arm64.tar.gz"
      sha256 "20234a81d3bd39bc354f4f6838fd636d52f520fe794cc6263d78bf7387b32505"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.347/fwdctl_v0.5.347_darwin_amd64.tar.gz"
      sha256 "550d90c60b8c332dc6bfcf21235dd969f3974ef7d0b2d53e894c422f1acc0a59"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.347/fwdctl_v0.5.347_linux_amd64.tar.gz"
      sha256 "6f0a8573ff357cd3e0ea46d590218fd1f61a620f66e578afe323a87061facd47"
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
