class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.365"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.365/fwdctl_v0.5.365_darwin_arm64.tar.gz"
      sha256 "7bc395b8d0192796c9f1c74f99821adfb10039e4f3597a0ad3390ab9db35c68b"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.365/fwdctl_v0.5.365_darwin_amd64.tar.gz"
      sha256 "9fad9e2735395db472b098de420c041dcd050532bf37e9d35591d23ab14e18f1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.365/fwdctl_v0.5.365_linux_amd64.tar.gz"
      sha256 "753d57b4d8f85968d83238de09ec04049cd0d32b9fdd7cf70ec06c716ee450db"
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
