class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.91"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.91/fwdctl_v0.5.91_darwin_arm64.tar.gz"
      sha256 "10fbaf9eeeca8637aaa5b9e2c6ef0e59721607c3e062ae4a0f69ea9ee597ebc8"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.91/fwdctl_v0.5.91_darwin_amd64.tar.gz"
      sha256 "94570656912e9695d887a86aa6f1c5085d2d472aa84bd28730873bd24f3eab93"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.91/fwdctl_v0.5.91_linux_amd64.tar.gz"
      sha256 "f84bf17a9b1d01087480de62684b54db5a5f3e006fdb7743cd07dfd3739077b9"
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
