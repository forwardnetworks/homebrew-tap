class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.145"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.145/fwdctl_v0.5.145_darwin_arm64.tar.gz"
      sha256 "6c02e7a0747697cad31facf2c1a0b738b4ac18d19c058e9675456102f99394e4"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.145/fwdctl_v0.5.145_darwin_amd64.tar.gz"
      sha256 "2c9bb53c729429e54bca68992fec63e3cecb76dd193782fdcf7bb248273a5ac4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.145/fwdctl_v0.5.145_linux_amd64.tar.gz"
      sha256 "a0a43794797aa0cb0976e15e07fd9be2ef7692a15b6b2b03a63606d9d1959cf6"
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
