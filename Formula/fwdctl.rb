class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.43"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.43/fwdctl_v0.5.43_darwin_arm64.tar.gz"
      sha256 "f6e44861707868e5642e78adafdb2b96586542bd171b1ca44c666030b586cc2d"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.43/fwdctl_v0.5.43_darwin_amd64.tar.gz"
      sha256 "9f2554213d2e854fb9c2c85016711b4c715acfbefa324f2e09708100f4df2836"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.43/fwdctl_v0.5.43_linux_amd64.tar.gz"
      sha256 "d29d611a4efaa3604f11fd9767c2f2e20312bc9721ab35b106ef0ad7aa666b2c"
    end
  end

  def install
    bin.install "fwdctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fwdctl --version")
  end
end
