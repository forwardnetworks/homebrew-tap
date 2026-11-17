class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.333"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.333/fwdctl_v0.5.333_darwin_arm64.tar.gz"
      sha256 "955ded139a9b495c6b2d6eff90cbb382e33535f1c11fe1ca4fabdbf54cfa596c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.333/fwdctl_v0.5.333_darwin_amd64.tar.gz"
      sha256 "2b267e26bdc8cac73ac020b8ef3b94cf07a8f7856bdf15350d96bfb346137d90"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.333/fwdctl_v0.5.333_linux_amd64.tar.gz"
      sha256 "484f1c894b474949843551578d9d8c04138df727ce485eebe80fe17bf9e8d061"
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
