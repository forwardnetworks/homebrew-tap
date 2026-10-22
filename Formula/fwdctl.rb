class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.195"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.195/fwdctl_v0.5.195_darwin_arm64.tar.gz"
      sha256 "2447738f4bc6a0eaba5395feaedebffa42bc50d5ceada98960212c5f309defea"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.195/fwdctl_v0.5.195_darwin_amd64.tar.gz"
      sha256 "9387aaa6de5f323563ca33cb19757bb0b113d12ffcf27da512edd39ca9ef66dc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.195/fwdctl_v0.5.195_linux_amd64.tar.gz"
      sha256 "dbb1e6214ca2bee8c79dec09d812e72565cd366443fd5dab477157d82b3732c1"
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
