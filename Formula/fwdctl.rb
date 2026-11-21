class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.371"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.371/fwdctl_v0.5.371_darwin_arm64.tar.gz"
      sha256 "cf0e82ddfb950322540d7c99123541d7f025a854bbaf734cd10a371b8670d44c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.371/fwdctl_v0.5.371_darwin_amd64.tar.gz"
      sha256 "7c8a777d675612ba0ad936c36eb7b5c241cc958407c94e047a2b8bf2eb73cf8d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.371/fwdctl_v0.5.371_linux_amd64.tar.gz"
      sha256 "0eadb4a1c1a1f009ae1fae2f3188abe6b1326bdc822d65700304322b40c2da38"
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
