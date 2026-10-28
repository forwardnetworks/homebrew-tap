class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.239"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.239/fwdctl_v0.5.239_darwin_arm64.tar.gz"
      sha256 "1aa5888940590d3087b26856fc53de02d66fd3213a48c60a5b42807f991a9d49"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.239/fwdctl_v0.5.239_darwin_amd64.tar.gz"
      sha256 "cd427343847bf792ad6777358888778f6887b0008d6f8d0028ef5d21c5632367"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.239/fwdctl_v0.5.239_linux_amd64.tar.gz"
      sha256 "84c65bc4f1eec5a343b748d865a8497ae9d2548f1df5251b56b2ef5ed4f5822c"
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
