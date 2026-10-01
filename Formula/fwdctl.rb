class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.45"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.45/fwdctl_v0.5.45_darwin_arm64.tar.gz"
      sha256 "4707f3a8c426612a2859d2bde17ed8837c827a1a0b098d077bfcf2a05e7eb3af"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.45/fwdctl_v0.5.45_darwin_amd64.tar.gz"
      sha256 "882acdde84288121734a1e108aecf47efcf777c95aa31084f72d9ffd4a69ac47"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.45/fwdctl_v0.5.45_linux_amd64.tar.gz"
      sha256 "eaae7eaee4196446830bf25bdbcb402bfae0f6da4159cfef5f6f23fc09a780e4"
    end
  end

  def install
    bin.install "fwdctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fwdctl --version")
  end
end
