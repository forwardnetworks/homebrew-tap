class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.61"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.61/fwdctl_v0.5.61_darwin_arm64.tar.gz"
      sha256 "a4212a6d9b0c55d4ba719643f83fdb4f1ef350838a32ee9969d674d94b8d7df5"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.61/fwdctl_v0.5.61_darwin_amd64.tar.gz"
      sha256 "99f06a33eeb32c8d7f208daa17a589ae24d7d428bcc7c58d763659be525d5344"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.61/fwdctl_v0.5.61_linux_amd64.tar.gz"
      sha256 "c668c9c51b0306047844bcfc5e4961fe7b1570fcbaaef910e294b9ec8207ee46"
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
