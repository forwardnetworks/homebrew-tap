class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.99"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.99/fwdctl_v0.5.99_darwin_arm64.tar.gz"
      sha256 "9713a89250d65e8fa2cacab62068ed937eb77b24898f7e86540253ffbfb08b4c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.99/fwdctl_v0.5.99_darwin_amd64.tar.gz"
      sha256 "0f1020f0f6f44e6d29b186dc836712592ef6292dfe8d5c3d6afe1bc5c64dc934"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.99/fwdctl_v0.5.99_linux_amd64.tar.gz"
      sha256 "efd4268d7489041c425e305491d4d872e85ec05839f35501a0e72fd3ac9d8ffd"
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
