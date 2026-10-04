class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.72"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.72/fwdctl_v0.5.72_darwin_arm64.tar.gz"
      sha256 "2f2538065b5fe692c8f01f63cb615c5b9a7123823bd8836bca636555eaaca022"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.72/fwdctl_v0.5.72_darwin_amd64.tar.gz"
      sha256 "f864d914e0299c6cb012bccc686d3228cc41067e551442fb1128e8d0a9fcd22d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.72/fwdctl_v0.5.72_linux_amd64.tar.gz"
      sha256 "fc05f0248a4e83968bf8005019865cb4754b816aa39e24c23d76387a5357fbda"
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
