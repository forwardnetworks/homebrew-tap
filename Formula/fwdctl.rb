class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.234"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.234/fwdctl_v0.5.234_darwin_arm64.tar.gz"
      sha256 "1c8513738eb618446786f20632ed03ebd61ef0b00d1694256f54e32d2039fd08"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.234/fwdctl_v0.5.234_darwin_amd64.tar.gz"
      sha256 "c2b28b0f2713ab610102e76c8e7e308ebba8da29431addab3a62f2d35d95ff7e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.234/fwdctl_v0.5.234_linux_amd64.tar.gz"
      sha256 "88202eebf50d5a0f24333b220878fa1ac965e5881ed8abcc036728344db60c48"
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
