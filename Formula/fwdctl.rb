class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.114"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.114/fwdctl_v0.5.114_darwin_arm64.tar.gz"
      sha256 "ead5cd4d1717953be90845e8ed8da3fc895fdd6646d4a00137d1c530ca722cff"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.114/fwdctl_v0.5.114_darwin_amd64.tar.gz"
      sha256 "fdd098a6b1e91cfecab66594931425cb3ddc89e1b2498ea86fdedfefd97aa4d2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.114/fwdctl_v0.5.114_linux_amd64.tar.gz"
      sha256 "dd39ec088981cf06e4b9a62a2df4095c1c469efd8fbbf7e02901c4d7b9c7c096"
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
