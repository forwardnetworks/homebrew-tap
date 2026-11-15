class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.316"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.316/fwdctl_v0.5.316_darwin_arm64.tar.gz"
      sha256 "6478d786585fed23529bc344c3e989047ef955c716e1693de39cfbe3c5b9f64f"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.316/fwdctl_v0.5.316_darwin_amd64.tar.gz"
      sha256 "298d375e76ecc51022ceb091d22624171daac0854a0b3d097022ec4d19c0e430"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.316/fwdctl_v0.5.316_linux_amd64.tar.gz"
      sha256 "541f9f4cf8a96ab8f5580c17f0ed77d322eace4c92465ac26126a3b94f671ffb"
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
