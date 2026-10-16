class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.125"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.125/fwdctl_v0.5.125_darwin_arm64.tar.gz"
      sha256 "7caf6af1790f2669a83ac5dd6b5d302630eb7ec459d4470e3c710e6846120863"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.125/fwdctl_v0.5.125_darwin_amd64.tar.gz"
      sha256 "62bdad2aa7378d4a7b176e46fb9272ced12122f8a68f97d71069fc894d12b3a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.125/fwdctl_v0.5.125_linux_amd64.tar.gz"
      sha256 "263bf46ef5a3f60dd3186536d496366db49afaa72b267a15044c0327af380a7f"
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
