class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.205"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.205/fwdctl_v0.5.205_darwin_arm64.tar.gz"
      sha256 "41d7534d7173d2285f9a2c7678835c1897549b399b90dde30c3b8fa07e7e9251"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.205/fwdctl_v0.5.205_darwin_amd64.tar.gz"
      sha256 "fe894f360eaaefbf93d29911dbba62e0f5365d4689244157a9b7d5069d999dbf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.205/fwdctl_v0.5.205_linux_amd64.tar.gz"
      sha256 "0a476600ea822defcd6feed004c644356460641f3d799dee9162fe7c57eeb8bc"
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
