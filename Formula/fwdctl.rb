class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.290"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.290/fwdctl_v0.5.290_darwin_arm64.tar.gz"
      sha256 "124a5b5e05d66396f2f4ebf1ef31a7c4b1a3b26eec97e33e40b08b502fe54f2e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.290/fwdctl_v0.5.290_darwin_amd64.tar.gz"
      sha256 "8769021c4584102e17b2b342251e6fb16053404a1897795f4422b1a5928168e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.290/fwdctl_v0.5.290_linux_amd64.tar.gz"
      sha256 "c020689035ab02b0ed8601223210875a754cf135523d5f017349f78ab768c327"
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
