class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.51"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.51/fwdctl_v0.5.51_darwin_arm64.tar.gz"
      sha256 "0c3ee6970a13dde2dc8953ad9dd9ed1cad8b56cc923f7c1ab5eed9121343e7df"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.51/fwdctl_v0.5.51_darwin_amd64.tar.gz"
      sha256 "f9697eb4c4159f3d1ac29149df3d9b7e2987f24911004a1c6b3be479bee55457"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.51/fwdctl_v0.5.51_linux_amd64.tar.gz"
      sha256 "6752148fd1995e573518f6ad12bd71f087a37222acc2fa2cc7db78044dab144f"
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
