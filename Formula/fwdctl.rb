class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.291"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.291/fwdctl_v0.5.291_darwin_arm64.tar.gz"
      sha256 "3d58431e5ca0af1540c75cdc2559abebaa4a4b0f7b3c3902bd33f85bcf243f57"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.291/fwdctl_v0.5.291_darwin_amd64.tar.gz"
      sha256 "6e7130d82d2586287330e9ffc3dea6fb1d2a532e8e414173a37ea4fc20b9d5ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.291/fwdctl_v0.5.291_linux_amd64.tar.gz"
      sha256 "f376ba8c773f4fa8ef7aaf53c1ae0e96eb97f54ceeaaf455737704212b0cfe06"
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
