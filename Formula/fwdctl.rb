class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.313"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.313/fwdctl_v0.5.313_darwin_arm64.tar.gz"
      sha256 "ef02a535e2f621b413551da9b9494609947788ef27b03a645042248137abb5d8"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.313/fwdctl_v0.5.313_darwin_amd64.tar.gz"
      sha256 "46ba0d11e1ed5d4a5c0dccbf4a15e61f5c269d7b2183ccea60541000c9ef2189"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.313/fwdctl_v0.5.313_linux_amd64.tar.gz"
      sha256 "9acfca39dbdaa5b324b2d49564b8b2ef8535f857b31e5ffc3979f40bd15d6403"
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
