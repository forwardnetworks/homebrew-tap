class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.275"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.275/fwdctl_v0.5.275_darwin_arm64.tar.gz"
      sha256 "d91b48180765cd1634f1522dcc223a57a75550db04580a02823b279d2648641b"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.275/fwdctl_v0.5.275_darwin_amd64.tar.gz"
      sha256 "ced68433805a7b7975ad82ac614a5a4f9c861affd08536f7cd31dd3180e07c49"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.275/fwdctl_v0.5.275_linux_amd64.tar.gz"
      sha256 "2e4e62e10a00953f398a49fb9ffca0b35a4dc046e2d4042ca0d687d6ab533fb2"
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
