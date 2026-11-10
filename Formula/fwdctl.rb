class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.305"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.305/fwdctl_v0.5.305_darwin_arm64.tar.gz"
      sha256 "227f4cf685fb640182a4b9098adc3bba9581c1fab4f48a701af16b0ca626d5ee"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.305/fwdctl_v0.5.305_darwin_amd64.tar.gz"
      sha256 "7fa5a721f01e53f484550decdf8929c3a1b441043feabe2a8d638fa6c4fbdb43"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.305/fwdctl_v0.5.305_linux_amd64.tar.gz"
      sha256 "568f3f9fcb1b11b592f49eb36add0a34114067473a137fa1977fe783bc8a792a"
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
