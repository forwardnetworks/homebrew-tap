class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.277"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.277/fwdctl_v0.5.277_darwin_arm64.tar.gz"
      sha256 "1ce759ceaf69102478f078317191041d22dd9613b2c4deef4e804f90b8a24173"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.277/fwdctl_v0.5.277_darwin_amd64.tar.gz"
      sha256 "567c78472285d59877039a04da8b1f6a911d33302780dd352fecf4a8856c02e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.277/fwdctl_v0.5.277_linux_amd64.tar.gz"
      sha256 "1f49d7abf4438b7111b223e50fd975a435fa918f7a32e86a510b02d70743327c"
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
