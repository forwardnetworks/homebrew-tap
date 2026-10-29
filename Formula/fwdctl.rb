class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.257"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.257/fwdctl_v0.5.257_darwin_arm64.tar.gz"
      sha256 "dbb191a499ff24e2886645d637d4d69616801b3a5c26f3a9f87ca8ff1ccee669"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.257/fwdctl_v0.5.257_darwin_amd64.tar.gz"
      sha256 "2bd307f24a76d151cafe35e33f88850e8e828c3ea3f15446e4eb3c938d3a5dd1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.257/fwdctl_v0.5.257_linux_amd64.tar.gz"
      sha256 "12eac387d238eb8a6995a5a800be0bf13a0795e2fa3264dd6cb4e67bbd0cb7e6"
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
