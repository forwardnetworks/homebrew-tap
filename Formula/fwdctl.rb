class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.294"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.294/fwdctl_v0.5.294_darwin_arm64.tar.gz"
      sha256 "565bf2500a70c16393b42334d713dc8ef28f0154417e34c037eb19a26f3efcc1"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.294/fwdctl_v0.5.294_darwin_amd64.tar.gz"
      sha256 "6089829509b504711c4339103f097c75507acf46e65d4ede298345b44e418364"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.294/fwdctl_v0.5.294_linux_amd64.tar.gz"
      sha256 "82e40a23324e7b39339e1fbc3046bd2d075c36b5db3c441c6c625b3af1a87238"
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
