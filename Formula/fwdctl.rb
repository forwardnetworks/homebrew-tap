class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.178"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.178/fwdctl_v0.5.178_darwin_arm64.tar.gz"
      sha256 "ee2a0ad313f4e042282976905383491bb101b77e9a4b6719a934d7c3309e764a"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.178/fwdctl_v0.5.178_darwin_amd64.tar.gz"
      sha256 "bdf65fa67fd4e340521718175599cf8598ff32f1c14cf57f61809465650f77d0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.178/fwdctl_v0.5.178_linux_amd64.tar.gz"
      sha256 "945e69faff49c33008f33dacbdd2c915ade3c586779c49bd783b6d0cd69f9661"
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
