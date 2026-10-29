class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.255"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.255/fwdctl_v0.5.255_darwin_arm64.tar.gz"
      sha256 "e611a9f18a04a534834b6b2340bf7c3f563a3c2ed2079332ca595532a708773c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.255/fwdctl_v0.5.255_darwin_amd64.tar.gz"
      sha256 "f774c17ed6f2d3a47e943be0d2a977952f114faca1a8b064228e6dd8a55b31d2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.255/fwdctl_v0.5.255_linux_amd64.tar.gz"
      sha256 "5feb37e89932497d7c9c77fc6652c01c4c802bf998691560b3ee0997b2eabfaf"
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
