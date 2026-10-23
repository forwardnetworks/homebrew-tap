class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.199"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.199/fwdctl_v0.5.199_darwin_arm64.tar.gz"
      sha256 "4de1e9d306d7e1e7b1dba3e8cfcbbfcd0b7d24627e404f7b5f8256c127821e8c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.199/fwdctl_v0.5.199_darwin_amd64.tar.gz"
      sha256 "abc4db61c74fbbc3ddb812b4b718af40da513a2cb187311440ba9c62931de5c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.199/fwdctl_v0.5.199_linux_amd64.tar.gz"
      sha256 "ac685dc4d8037b10229b2d698fab3dfa5cbf6cbebed6691dbe3b2c93a194a626"
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
