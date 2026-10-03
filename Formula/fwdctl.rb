class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.69"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.69/fwdctl_v0.5.69_darwin_arm64.tar.gz"
      sha256 "c7a0418954c41293f389191ee461bcf7c343a9cc0ce8313142e13dadfc004a1b"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.69/fwdctl_v0.5.69_darwin_amd64.tar.gz"
      sha256 "a3522946077a8c13271b64e2ac300fd2fc4e28b52b6a87ee23bb2c128227d609"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.69/fwdctl_v0.5.69_linux_amd64.tar.gz"
      sha256 "7e58d367c9c8c48be87ee7584daff5f580ee585c726645c794eb4a409b39eb88"
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
