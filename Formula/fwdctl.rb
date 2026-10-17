class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.154"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.154/fwdctl_v0.5.154_darwin_arm64.tar.gz"
      sha256 "0caa3118db8b289c47a942c1602af659077a2b5f398ddeac0d90bb56975d6bec"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.154/fwdctl_v0.5.154_darwin_amd64.tar.gz"
      sha256 "8f786cac359d621ecbb09cc1671c4ca36d271bdfb624e9d137de5b17a706e1ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.154/fwdctl_v0.5.154_linux_amd64.tar.gz"
      sha256 "279f3aa59e6c4adb9dc80117e9331576a1798121c71898b705201729a7f19484"
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
