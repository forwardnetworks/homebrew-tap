class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.57"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.57/fwdctl_v0.5.57_darwin_arm64.tar.gz"
      sha256 "a5d68d67494b0a8e1bb07b0e9c80b92f476e4e73bf8d79cad728e3110c0293bf"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.57/fwdctl_v0.5.57_darwin_amd64.tar.gz"
      sha256 "4112c7dd1e2314c271abbd753ac611a5eb55a9556121e1d7465689fde6f20970"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.57/fwdctl_v0.5.57_linux_amd64.tar.gz"
      sha256 "bfe93e99663ea7e88d0d6c8eecdfe37caec016193770dbd873ba8b81b49e86a1"
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
