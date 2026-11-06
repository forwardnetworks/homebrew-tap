class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.296"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.296/fwdctl_v0.5.296_darwin_arm64.tar.gz"
      sha256 "4f7cdb3484a3850006ddb2c6b470f79cf07d5a566e70b99b5e93150f222b4626"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.296/fwdctl_v0.5.296_darwin_amd64.tar.gz"
      sha256 "f99889b5a25594b2d0b2c94ba87499a2be07ee9a253a9c852a6035d34c5bf885"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.296/fwdctl_v0.5.296_linux_amd64.tar.gz"
      sha256 "e40fb738efcd859dd5040a214dfe75cb65c5228552e41d1b2c885ff0b654b69f"
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
