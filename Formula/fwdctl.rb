class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.49"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.49/fwdctl_v0.5.49_darwin_arm64.tar.gz"
      sha256 "589168f5fd5207d6cd331e3d508efa120b2f407eca35858fd900d9b6c9d02eac"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.49/fwdctl_v0.5.49_darwin_amd64.tar.gz"
      sha256 "84b34e74d93451f424a5b7c49a80910f3ffaaeb134a88288e9a41188cd111bb3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.49/fwdctl_v0.5.49_linux_amd64.tar.gz"
      sha256 "947de46e5e4e039222d4e1366c07505519e485d3042d5b58d3faceb11e8e8c69"
    end
  end

  def install
    bin.install "fwdctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fwdctl --version")
  end
end
