class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.338"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.338/fwdctl_v0.5.338_darwin_arm64.tar.gz"
      sha256 "30513ef332b804dae27ac97bd934bca2bd1f3a77cc552d463e313a36a637e6e7"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.338/fwdctl_v0.5.338_darwin_amd64.tar.gz"
      sha256 "e3208b4b427b4df44f71060066d0543a08fe0bb66d09028b5ccb1014adc4e8f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.338/fwdctl_v0.5.338_linux_amd64.tar.gz"
      sha256 "6c2db01e80f30c416df53d1c89e54ee19b3407ae4c398a5d0731ac6a7dbbd786"
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
