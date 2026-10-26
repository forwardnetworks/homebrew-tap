class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.215"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.215/fwdctl_v0.5.215_darwin_arm64.tar.gz"
      sha256 "a6f060a7277b153fb99d07c76426b9cd54cbdbfb8f2f0bee58cb598e9cb41b6a"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.215/fwdctl_v0.5.215_darwin_amd64.tar.gz"
      sha256 "f5cab34f4a9d01c537ce94aefe4aaedbfc6565b0876258023c35565d8a3cf3a0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.215/fwdctl_v0.5.215_linux_amd64.tar.gz"
      sha256 "6a2b29b43ab74e44635e7c25e8af77b85bd73ea17056b9b893008cd9ea06dde5"
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
