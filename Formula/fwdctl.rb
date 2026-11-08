class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.298"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.298/fwdctl_v0.5.298_darwin_arm64.tar.gz"
      sha256 "217f119163b79af71ed5b050f496fdd0fc25c920d173afc778479c90754b1c4c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.298/fwdctl_v0.5.298_darwin_amd64.tar.gz"
      sha256 "0e84af19f5f3d4ac3ab2e2054bdd556045af2f07ce1b2ae9bf11abeea3e7acc2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.298/fwdctl_v0.5.298_linux_amd64.tar.gz"
      sha256 "24e45a3bfd68b7048381d3f5e266da0677b16a4169cccbf5d4dccb6abce977a2"
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
