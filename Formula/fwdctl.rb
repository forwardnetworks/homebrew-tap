class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.193"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.193/fwdctl_v0.5.193_darwin_arm64.tar.gz"
      sha256 "3ffaee972709b1d5785704bd742ff36d822badef262d9667a2636874c6d88026"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.193/fwdctl_v0.5.193_darwin_amd64.tar.gz"
      sha256 "576bf0562b81f476350aefdbc0db28fe6ebba7c4548a9279af303fa77e21c54e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.193/fwdctl_v0.5.193_linux_amd64.tar.gz"
      sha256 "edb0c6fc71c2da6b485db29d27bfac549248450d901bcc0db51e0eb94e7ce21b"
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
