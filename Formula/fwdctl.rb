class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.280"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.280/fwdctl_v0.5.280_darwin_arm64.tar.gz"
      sha256 "a31719340466e07df6b62cdcd67d8fb27f99c1b6d59ade9dd9fa7a80ee258d6f"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.280/fwdctl_v0.5.280_darwin_amd64.tar.gz"
      sha256 "92210fe3f96aa420b16bff1846d0fc512822a22481303b01d87b0076ccb015c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.280/fwdctl_v0.5.280_linux_amd64.tar.gz"
      sha256 "b5aebf2697f8ac3ab5091df492a5e777d8c2d4a59658c1e3535972877d685559"
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
