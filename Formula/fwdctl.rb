class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.80"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.80/fwdctl_v0.5.80_darwin_arm64.tar.gz"
      sha256 "e343647c24a3681739e806be197f5c1f340094a22cfc16f47ad656c64edab39c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.80/fwdctl_v0.5.80_darwin_amd64.tar.gz"
      sha256 "8bb793ade5c9bb6bac611e2003fc90ad67ba77573b803853b3ce1ceb5c5a5f40"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.80/fwdctl_v0.5.80_linux_amd64.tar.gz"
      sha256 "86547a7831abe02fcc801f8d6c570ad35da6cd11f5a8ee6f38a6108e2296407e"
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
