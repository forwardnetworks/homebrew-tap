class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.115"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.115/fwdctl_v0.5.115_darwin_arm64.tar.gz"
      sha256 "e0b194c6e09018705f58eb846337e0fc159ceffa0fa190f1b1d3444cc4939c5a"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.115/fwdctl_v0.5.115_darwin_amd64.tar.gz"
      sha256 "74318cf846ce3afabe2dffb9824f6e285154f4f508ed41c634f2e84c7482942e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.115/fwdctl_v0.5.115_linux_amd64.tar.gz"
      sha256 "bd5fa83d7bae4e4879a6d2cba3c046ed4f257500196ea4b72ebcb594540e24fe"
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
