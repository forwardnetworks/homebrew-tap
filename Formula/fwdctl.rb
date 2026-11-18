class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.342"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.342/fwdctl_v0.5.342_darwin_arm64.tar.gz"
      sha256 "630d093289377cd2e3c7c8082e32dda712bfa1f310fd64c40936d8b52570093e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.342/fwdctl_v0.5.342_darwin_amd64.tar.gz"
      sha256 "915361855b327c3de58218ab722374f6fac935dab7f550a7e82859f0e9a0855a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.342/fwdctl_v0.5.342_linux_amd64.tar.gz"
      sha256 "f75a6e3446f6cbcae244e98898cb79ff1960687871a7e46e69c42d8a0fb93b52"
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
