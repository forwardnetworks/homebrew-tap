class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.82"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.82/fwdctl_v0.5.82_darwin_arm64.tar.gz"
      sha256 "bd45a2b3389ed971c84eb28fb685b0feee09a5dd74de877ea2bc45a8bb85b623"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.82/fwdctl_v0.5.82_darwin_amd64.tar.gz"
      sha256 "ea18356ab428b94479d1c255a452667feaac11279ebf551c055ba188ec798b88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.82/fwdctl_v0.5.82_linux_amd64.tar.gz"
      sha256 "ddf190a62db5c39cb4994a65767d7c669221d4ab3d9ba98db2969df3df8f870d"
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
