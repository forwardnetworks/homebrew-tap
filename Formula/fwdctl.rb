class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.46"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.46/fwdctl_v0.5.46_darwin_arm64.tar.gz"
      sha256 "9371f2150e88c4f0baf3c891cd9acf3689f4dc8dc1fcc413d6edadae4d9526d1"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.46/fwdctl_v0.5.46_darwin_amd64.tar.gz"
      sha256 "4183ef0398379c9746e2b31a584788a85912b8745db85fa157b5a2fa39bb42bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.46/fwdctl_v0.5.46_linux_amd64.tar.gz"
      sha256 "4e1e776b7185ed689a5b17ece8ca4021070a398780c8c3e1eb087315f3ebe1f9"
    end
  end

  def install
    bin.install "fwdctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fwdctl --version")
  end
end
