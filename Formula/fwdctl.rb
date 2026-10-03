class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.66"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.66/fwdctl_v0.5.66_darwin_arm64.tar.gz"
      sha256 "2f8e3d4eeb70dad825c23d9b14e14ab05a842c73ff9f31ecdff78a682a066f30"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.66/fwdctl_v0.5.66_darwin_amd64.tar.gz"
      sha256 "4fd76e0c6c3a02bd60cd54957491a5f5dcda4d6fe042fb9b7d0c4fde4b1248fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.66/fwdctl_v0.5.66_linux_amd64.tar.gz"
      sha256 "cae678ab9142e0f0a9db089c7ef2a753d6bfe04a999a389c550f1780a6a3e401"
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
