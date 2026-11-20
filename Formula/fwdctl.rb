class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.363"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.363/fwdctl_v0.5.363_darwin_arm64.tar.gz"
      sha256 "1e748b2d7fdcb5ca2b40db40095c1d946c2c38d11c21cb5bd4f051d87a50b760"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.363/fwdctl_v0.5.363_darwin_amd64.tar.gz"
      sha256 "a87d26b4959641642710b03cc5aa6304fb53d5be321bb71793b9bcabfc234569"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.363/fwdctl_v0.5.363_linux_amd64.tar.gz"
      sha256 "1060e45d697e3ae695b58d558d07e0d6b2002146b5682d3e5822d12992d6fd12"
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
