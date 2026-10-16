class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.143"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.143/fwdctl_v0.5.143_darwin_arm64.tar.gz"
      sha256 "b0f94dd73cd71ab6568a9c50a6fd9b330a45e0173051f6048c2bb20f3bbe0d05"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.143/fwdctl_v0.5.143_darwin_amd64.tar.gz"
      sha256 "327f21b288c1b7d6a47a9c91ffce638b85555b335030c5c05f3857b131fea628"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.143/fwdctl_v0.5.143_linux_amd64.tar.gz"
      sha256 "7dcda87ead9ecedc21d56da1b704b67ec2d8a6b30055591dd3c3a63c9fb2718a"
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
