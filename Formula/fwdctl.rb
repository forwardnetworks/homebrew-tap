class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.197"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.197/fwdctl_v0.5.197_darwin_arm64.tar.gz"
      sha256 "16dc1ae219e30b419662fbf1b2e62b435c947fd4fe036d03c25a2a18f4f97a10"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.197/fwdctl_v0.5.197_darwin_amd64.tar.gz"
      sha256 "25bae3d5cafc65ac9cee6af7a7b659cd8d88bba9e22a1370fbc6b289ae0d74c9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.197/fwdctl_v0.5.197_linux_amd64.tar.gz"
      sha256 "6438d90bf35e6d8e8be854fb271bd1639e6fd285de6556fc8b2e5a370d6dc8f7"
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
