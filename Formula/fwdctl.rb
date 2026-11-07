class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.297"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.297/fwdctl_v0.5.297_darwin_arm64.tar.gz"
      sha256 "329a0795d321e2bbe018e6938e8a1a94084f4c5a66a9f40270ab868e1fe246e4"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.297/fwdctl_v0.5.297_darwin_amd64.tar.gz"
      sha256 "00f50aa2c632c1a04cc85bb12c80797140a6a802e74253cde7dbf748a5071f72"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.297/fwdctl_v0.5.297_linux_amd64.tar.gz"
      sha256 "3776305ebb6261a2442e86b0b34a85dca9b6c57c7a5472a93bdad6122eabd48b"
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
