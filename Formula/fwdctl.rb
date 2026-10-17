class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.160"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.160/fwdctl_v0.5.160_darwin_arm64.tar.gz"
      sha256 "ac7b4252c02d10bbd2b9f8def74b6ed39de73452cc73f9eaf6f98e009e135a4c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.160/fwdctl_v0.5.160_darwin_amd64.tar.gz"
      sha256 "9a1d1f628b68e89b57add3320ff19489f1ffd0bdf82ac6623baa3908418bab99"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.160/fwdctl_v0.5.160_linux_amd64.tar.gz"
      sha256 "8bf2d6505a94559fcc7b02086c0c1d6ef7842c50a75965431c1977c2958b1e64"
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
