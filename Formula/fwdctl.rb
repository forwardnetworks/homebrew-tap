class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.221"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.221/fwdctl_v0.5.221_darwin_arm64.tar.gz"
      sha256 "0cb6242877a7cd459a0fe7c43f18708d390f13399d12048dcf4fde9fa0dfcdcd"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.221/fwdctl_v0.5.221_darwin_amd64.tar.gz"
      sha256 "ee0fde07b957eda3280812463c3eadebc3f94e57884f87933f65c4d2c377293c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.221/fwdctl_v0.5.221_linux_amd64.tar.gz"
      sha256 "1b7f9e0f007347b38c4ac9432400ba5aa8666fad306e6f6f61271b24f5931774"
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
