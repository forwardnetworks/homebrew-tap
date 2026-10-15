class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.113"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.113/fwdctl_v0.5.113_darwin_arm64.tar.gz"
      sha256 "3eb2e770c80d4ec4fcfe6d20c30f6b6a98f95a652943270c36dffb26945a8c27"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.113/fwdctl_v0.5.113_darwin_amd64.tar.gz"
      sha256 "dd2df4bae2b2d01618853b2d1abdc3fb49e6f767b20927f2b3d7c4c0907a99ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.113/fwdctl_v0.5.113_linux_amd64.tar.gz"
      sha256 "b046c1d8e2c05cfe6d8721b2e8e19ddc3da90edb56b9543b7b194bed06797e36"
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
