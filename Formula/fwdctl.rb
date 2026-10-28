class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.240"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.240/fwdctl_v0.5.240_darwin_arm64.tar.gz"
      sha256 "fb9c092756d1b94c6ca791248fc8a00670a59961be06967431efb5b94382f38d"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.240/fwdctl_v0.5.240_darwin_amd64.tar.gz"
      sha256 "73000ae69795d939ccf35661224422c44f499b3fea80abc48c82405b397e757d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.240/fwdctl_v0.5.240_linux_amd64.tar.gz"
      sha256 "be0147e20cade8c3d8d37270dc3bd132449142b0cdf942d11144562dbac325ad"
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
