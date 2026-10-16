class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.133"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.133/fwdctl_v0.5.133_darwin_arm64.tar.gz"
      sha256 "640f20437eafc010d937914bb281f0286a3bc370918d8b7fc6e1b9cbad429767"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.133/fwdctl_v0.5.133_darwin_amd64.tar.gz"
      sha256 "bd553f6a759e8c1570e2ede775d3146cb74c336a4aafc2243403baf36be71f97"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.133/fwdctl_v0.5.133_linux_amd64.tar.gz"
      sha256 "54c6ff3823d9c068b7b4ec04816f6ffd430405d0a5483ac449f7aec13000aa89"
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
