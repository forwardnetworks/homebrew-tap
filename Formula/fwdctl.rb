class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.111"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.111/fwdctl_v0.5.111_darwin_arm64.tar.gz"
      sha256 "ee38a61e10637cf6c024ee979cc9e28aa5ec490dd2b3214d84e39e76f717383e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.111/fwdctl_v0.5.111_darwin_amd64.tar.gz"
      sha256 "21fc46d24c1567b0bbdb3c7d7cc1cf67dab507511be4760f1fc99127b394a7a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.111/fwdctl_v0.5.111_linux_amd64.tar.gz"
      sha256 "4639b896748e11019af9974ff4c491d5c6e73cb7bfc7d454e38beee5d84d6dd7"
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
