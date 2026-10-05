class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.77"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.77/fwdctl_v0.5.77_darwin_arm64.tar.gz"
      sha256 "1ebc3c4c4f8ff3c95347675817e6a8880106a0885075d1ebd060791175234747"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.77/fwdctl_v0.5.77_darwin_amd64.tar.gz"
      sha256 "e12c218a846e449671e570546d2c428cdc1a3c86b13100881cf54dcedaa1f9f1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.77/fwdctl_v0.5.77_linux_amd64.tar.gz"
      sha256 "053a031c5cb513930d81541f6f125d9a52d28febbbe2cfab9587cd807f1b4c95"
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
