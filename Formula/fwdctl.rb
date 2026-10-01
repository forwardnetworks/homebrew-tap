class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.42"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.42/fwdctl_v0.5.42_darwin_arm64.tar.gz"
      sha256 "fc1821729c7e6d290be4539a1c3972e14d74d45240bf90c544d14b9543249df0"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.42/fwdctl_v0.5.42_darwin_amd64.tar.gz"
      sha256 "609241e2c349fa1a58e4f3f3e7e3aafdf51ee876586289749c8751cc4c72229b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.42/fwdctl_v0.5.42_linux_amd64.tar.gz"
      sha256 "8a0cb4759f68a91ce8655bf31741f4f9214e6044749fca096095d91113fccecb"
    end
  end

  def install
    bin.install "fwdctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fwdctl --version")
  end
end
