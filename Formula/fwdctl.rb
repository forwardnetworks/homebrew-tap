class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.212"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.212/fwdctl_v0.5.212_darwin_arm64.tar.gz"
      sha256 "9300df9101b55f22fb13f8f541eaf98b16e29a10b9668a2d61a33dfef8b0c443"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.212/fwdctl_v0.5.212_darwin_amd64.tar.gz"
      sha256 "6899931adae181ce0be221bc85bdb91760c655e94138d677cb75e83ee4394a76"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.212/fwdctl_v0.5.212_linux_amd64.tar.gz"
      sha256 "dade47c1b65aa2532aa2bdaf9e9cce459c4d194777f8fd9b8cb4d275ee624818"
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
