class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.137"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.137/fwdctl_v0.5.137_darwin_arm64.tar.gz"
      sha256 "51796f175d0bb7cb256375a887527e7d4f0fa6a26ef47ee2876e25e24d663213"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.137/fwdctl_v0.5.137_darwin_amd64.tar.gz"
      sha256 "9f8fd7d7f301714ba35bdcb97565255a57ca52fed0b47244b40289a6b37d2411"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.137/fwdctl_v0.5.137_linux_amd64.tar.gz"
      sha256 "3b3354c7b0cd61be1e773b2e8684370f88d768c539d90cd7a5c325ec50602ef3"
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
