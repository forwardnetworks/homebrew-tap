class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.172"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.172/fwdctl_v0.5.172_darwin_arm64.tar.gz"
      sha256 "fcce848c8c5e17f43c0581666d730f87ad57001c545b54f5b9f6480ae83c2542"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.172/fwdctl_v0.5.172_darwin_amd64.tar.gz"
      sha256 "d86a6c495c9a37d3a4d5edff34f2551c03b80535207d06ab2ea12884bf40eb92"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.172/fwdctl_v0.5.172_linux_amd64.tar.gz"
      sha256 "3f6aaca2f8cddbc4fdce45124d40c900995d261cedc0314c58ae8b68dfa3281b"
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
