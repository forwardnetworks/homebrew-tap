class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.55"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.55/fwdctl_v0.5.55_darwin_arm64.tar.gz"
      sha256 "36eba0c5b43f2cf5cd923295bc5ade2dbaf161df86e44faf9b97ae7e1fdc4dc0"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.55/fwdctl_v0.5.55_darwin_amd64.tar.gz"
      sha256 "973b1de933f200ea873502b9932faae28d420925c7492ef2522ea4fc1960188c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.55/fwdctl_v0.5.55_linux_amd64.tar.gz"
      sha256 "ff3909842a54691a5305b74504bf55b80a7f0025d345f15fb6b1d7d6816b6857"
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
