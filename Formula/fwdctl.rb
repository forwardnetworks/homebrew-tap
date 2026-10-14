class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.101"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.101/fwdctl_v0.5.101_darwin_arm64.tar.gz"
      sha256 "ef1930e61543ca253ce7b022db8ce81a95395a479566c21ea167eb90a1b555bc"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.101/fwdctl_v0.5.101_darwin_amd64.tar.gz"
      sha256 "55f134abda22993f6ae1153f200ef9194052bf8cdc3deac0bea36a231af287dc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.101/fwdctl_v0.5.101_linux_amd64.tar.gz"
      sha256 "3e3876bbca367566996d1976a244756ff2ff653a532f9f7fd50b1d4a8fce1e98"
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
