class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.136"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.136/fwdctl_v0.5.136_darwin_arm64.tar.gz"
      sha256 "34b18f5880dd0d53d74370418c5430b1356d1f3b6e3dfc0e991f5765310b76a1"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.136/fwdctl_v0.5.136_darwin_amd64.tar.gz"
      sha256 "0a0d251b15b5e9f94c24cfed7be656170e62e2a58cadb2dee249ae5ddd4831af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.136/fwdctl_v0.5.136_linux_amd64.tar.gz"
      sha256 "e1d1e997c314b04748f2f3a247fc5839e25005f176d4da5c288a015920acb220"
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
