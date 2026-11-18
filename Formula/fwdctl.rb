class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.352"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.352/fwdctl_v0.5.352_darwin_arm64.tar.gz"
      sha256 "233dc3cea34f66284a3cfe0394f66ed81400497b05ca3d25bde3a359031ac9da"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.352/fwdctl_v0.5.352_darwin_amd64.tar.gz"
      sha256 "f2f9b0e1f2ac5bd93f973622440d4a58716bab8eac82d926ec0906d3094ac78c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.352/fwdctl_v0.5.352_linux_amd64.tar.gz"
      sha256 "e89436375a49e783394c1c3844d341f1a090ecb831101ae0d6706848ee5fdc14"
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
