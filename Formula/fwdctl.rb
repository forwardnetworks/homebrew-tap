class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.201"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.201/fwdctl_v0.5.201_darwin_arm64.tar.gz"
      sha256 "9a3aacbf294e37e7eac3f560b703a65b09d382c3101480a8062e9481a5ba7bae"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.201/fwdctl_v0.5.201_darwin_amd64.tar.gz"
      sha256 "546bfb3cb7a82d4318a22d2ee7595bc8034175ee5abc830dac5e2a435779dc65"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.201/fwdctl_v0.5.201_linux_amd64.tar.gz"
      sha256 "d1f83da6fb09b694a6407e38d116940644ea59343f4518b973361d62a8c393cf"
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
