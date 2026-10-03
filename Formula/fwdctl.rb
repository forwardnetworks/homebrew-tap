class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.67"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.67/fwdctl_v0.5.67_darwin_arm64.tar.gz"
      sha256 "db057404c4aba22c271a4b00179b135bcc2bd37dda58ead23b2e8a654a6a51e7"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.67/fwdctl_v0.5.67_darwin_amd64.tar.gz"
      sha256 "7599da99ed26a8501ba0138f3aac2b7db5ad6e6ff3c3ad40f8ce3e88d5fa13eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.67/fwdctl_v0.5.67_linux_amd64.tar.gz"
      sha256 "e26db0ce73cb8eb89ad913e10d48b7f09556a8cc284cb9376ca1ef4d09623e5f"
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
