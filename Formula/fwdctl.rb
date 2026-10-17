class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.155"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.155/fwdctl_v0.5.155_darwin_arm64.tar.gz"
      sha256 "6a21b7c71075e155e01efcbdc66dbce0586b633e115f7ae3e99cda8bdb4ac6b8"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.155/fwdctl_v0.5.155_darwin_amd64.tar.gz"
      sha256 "4d254a4fb811a4cfa0b765717ba462be9e59285edd91262c06bfa1b1a6a37c89"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.155/fwdctl_v0.5.155_linux_amd64.tar.gz"
      sha256 "28111a0391ee6b3c5489c4df8c08a7b1bc8d650529270634efdd753b08ab33e7"
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
