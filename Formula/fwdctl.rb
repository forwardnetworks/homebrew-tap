class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.206"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.206/fwdctl_v0.5.206_darwin_arm64.tar.gz"
      sha256 "49e61de13b0ff25e820e42ca2ea1d5b2f7f0e8f7163f342cc16f93327d242120"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.206/fwdctl_v0.5.206_darwin_amd64.tar.gz"
      sha256 "2fe2ebe63e27be14542cc8f5e27bf01a58356e76c29a1e40d73ed1de73d218b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.206/fwdctl_v0.5.206_linux_amd64.tar.gz"
      sha256 "3571d2e28132010629c353baea4a068f2752966410344515fadd5cada2046f3e"
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
