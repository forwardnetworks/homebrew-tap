class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.161"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.161/fwdctl_v0.5.161_darwin_arm64.tar.gz"
      sha256 "598fb251f0399e540841754c5e7292d0a40c4e64e4a05c3409b649108dac8809"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.161/fwdctl_v0.5.161_darwin_amd64.tar.gz"
      sha256 "828ba29200d5c8d06b602475dc13178d4071bea73c36ca0f158fb7466c87f9a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.161/fwdctl_v0.5.161_linux_amd64.tar.gz"
      sha256 "e032d118ba0c530859b6fee35ba713ed09aec049e8ff4d6b7aa00858d3c03365"
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
