class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.105"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.105/fwdctl_v0.5.105_darwin_arm64.tar.gz"
      sha256 "28137d25f0c28d7fe6c8758f9fb7a27c2bdb177c9cf0da864620a4513a2d711f"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.105/fwdctl_v0.5.105_darwin_amd64.tar.gz"
      sha256 "25a256ddeac1265f10aa63527734edeac1742e238e2cd1ad364384548ccc5662"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.105/fwdctl_v0.5.105_linux_amd64.tar.gz"
      sha256 "d8c57144f39b3fdcea2a0b566452045cbdf55bb1a9c4f8f24ba0442a9a2170cd"
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
