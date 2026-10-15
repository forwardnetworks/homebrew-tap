class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.107"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.107/fwdctl_v0.5.107_darwin_arm64.tar.gz"
      sha256 "9ef4ed578b9078e5bdf14fe92fc2824828d13eb961097deb72e58aeb5a1e6148"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.107/fwdctl_v0.5.107_darwin_amd64.tar.gz"
      sha256 "ff12ce67640094d03d192c76436a4d9ead3ec262e9965806b0c1ae765ecaf1bc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.107/fwdctl_v0.5.107_linux_amd64.tar.gz"
      sha256 "7ab4ea3b8feb0fbfa3960eb0523661ddc59a5f9cd4381d24a6455ae00f719258"
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
