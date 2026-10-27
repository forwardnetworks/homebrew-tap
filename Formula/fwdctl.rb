class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.233"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.233/fwdctl_v0.5.233_darwin_arm64.tar.gz"
      sha256 "10835db8eec76c746b4a08357ce18e31567601e4a102390be4b9df9718bd2934"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.233/fwdctl_v0.5.233_darwin_amd64.tar.gz"
      sha256 "7d8f64c65179a521d4b7df8e48c45138127f6ad1052d0deb6eedd4631a8d3ab6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.233/fwdctl_v0.5.233_linux_amd64.tar.gz"
      sha256 "ee82d0e5a7361376ece7f0fec2e304145f23b1dfbd700fd160492f765006ec27"
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
