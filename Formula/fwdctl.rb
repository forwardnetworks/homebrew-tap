class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.341"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.341/fwdctl_v0.5.341_darwin_arm64.tar.gz"
      sha256 "842cea1384b236bd6e309598aade2cc523fcb0b038fa8056cbf411b7df70d2cf"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.341/fwdctl_v0.5.341_darwin_amd64.tar.gz"
      sha256 "269d2d4c671f428c18dabc484b81f5ca4f3f445f39e114e22555046654108a71"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.341/fwdctl_v0.5.341_linux_amd64.tar.gz"
      sha256 "c37a828d070b5ef3190745e5b4c543bb2478b0fef626d3b83491e6fbdaceda68"
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
