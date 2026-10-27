class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.235"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.235/fwdctl_v0.5.235_darwin_arm64.tar.gz"
      sha256 "f95dcb4949ea66a4fc315d005e9b6b469d41097706f5fdf10d3c6c10c3ac0072"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.235/fwdctl_v0.5.235_darwin_amd64.tar.gz"
      sha256 "b04e3e438fb546f7147c965419f1ace475c9bb409187f0fff228b52b00e920ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.235/fwdctl_v0.5.235_linux_amd64.tar.gz"
      sha256 "0d9480b48750da577df55ca014eb7a8144cf41a1a7c3a663ae4dbb4690411a2b"
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
