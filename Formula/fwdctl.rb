class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.108"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.108/fwdctl_v0.5.108_darwin_arm64.tar.gz"
      sha256 "542f7b4678c17853ee9a2edded243028b54c988517b7043b121f33de8a7067d2"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.108/fwdctl_v0.5.108_darwin_amd64.tar.gz"
      sha256 "d604bd14027066d310370177d6145cbbaf08fecdd70c90852c4d5d969fb18155"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.108/fwdctl_v0.5.108_linux_amd64.tar.gz"
      sha256 "7b770ae5e804a1331adb2e2d5e4a4eb31c8baa7b2db9f38a487402f7da21b2f1"
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
