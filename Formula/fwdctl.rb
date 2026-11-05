class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.278"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.278/fwdctl_v0.5.278_darwin_arm64.tar.gz"
      sha256 "749d76ca4a81e2c38550c012cf19818e44afbdc7376792d3779911dfc71d7ee5"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.278/fwdctl_v0.5.278_darwin_amd64.tar.gz"
      sha256 "8e7f0eef671284e14a7ff7634fb5b1884e6a8e9e719f80aadb60e254535e2cde"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.278/fwdctl_v0.5.278_linux_amd64.tar.gz"
      sha256 "ad4680802d96ee6ada4f1c972a0a4babc61ff19ec7acfe9ea8d423de1cdd7ca0"
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
