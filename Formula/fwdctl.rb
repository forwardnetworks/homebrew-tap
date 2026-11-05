class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.279"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.279/fwdctl_v0.5.279_darwin_arm64.tar.gz"
      sha256 "cda7ca43af91b709fbc2ca97eedc4536c4fb4de9ff04450413f8c659da333fd7"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.279/fwdctl_v0.5.279_darwin_amd64.tar.gz"
      sha256 "3e213eee5d04be97f3a4c540eab32ac823b5c46daede79661272cee564613e0b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.279/fwdctl_v0.5.279_linux_amd64.tar.gz"
      sha256 "22a499ab5d3a333725e9fc2445d925d5c14825c55cbb97093cb91d3f5f537fc6"
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
