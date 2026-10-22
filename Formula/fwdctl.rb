class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.194"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.194/fwdctl_v0.5.194_darwin_arm64.tar.gz"
      sha256 "943c91651a15e3fbb82d4e8029b1f806d5e0b610a0f7a1fe87715cf79a87183d"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.194/fwdctl_v0.5.194_darwin_amd64.tar.gz"
      sha256 "02367ac87f48262f1dd2bfce343869d4455bb6e2f0cb9bea44810556834b8d2f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.194/fwdctl_v0.5.194_linux_amd64.tar.gz"
      sha256 "d80f1c8f31a8ebd1c7f336a54cb3ff4f18ff9b70ae7d587604c15747f39c4161"
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
