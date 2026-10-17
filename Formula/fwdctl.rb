class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.152"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.152/fwdctl_v0.5.152_darwin_arm64.tar.gz"
      sha256 "fce0fdd901c800ccdee6bebb1dd4e3be29fbc5b690f8966f5f5c0d6826cdcf6e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.152/fwdctl_v0.5.152_darwin_amd64.tar.gz"
      sha256 "92aff9df0245e6ec5725815c018d0fd24321342ad7c289c3757a66cbf62a9f14"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.152/fwdctl_v0.5.152_linux_amd64.tar.gz"
      sha256 "aec4d9cce2171766afb190481ab61c5e28b360f97044e7d79b39744a02b33de0"
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
