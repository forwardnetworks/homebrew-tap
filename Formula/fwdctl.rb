class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.260"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.260/fwdctl_v0.5.260_darwin_arm64.tar.gz"
      sha256 "49598d9a60e7a5d8a218fa78dca1b35061afa96c329855683cd327bb90194f6b"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.260/fwdctl_v0.5.260_darwin_amd64.tar.gz"
      sha256 "6f53c5cac1a89969ef667a123115cdb84ae0d5816d82c519ec905be5c74caa81"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.260/fwdctl_v0.5.260_linux_amd64.tar.gz"
      sha256 "ba340945778668c10fb1622cdda203bf580ed9e877a904e861ef0e947498e6bd"
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
