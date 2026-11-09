class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.304"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.304/fwdctl_v0.5.304_darwin_arm64.tar.gz"
      sha256 "6a68099a7fa92f81780f037766db70af63f9f9ffae777501c4e71e90146674cf"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.304/fwdctl_v0.5.304_darwin_amd64.tar.gz"
      sha256 "6c786c00a4edae814ba6ab0124b295114a82a7c9438a0365ed76a597c9ca6420"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.304/fwdctl_v0.5.304_linux_amd64.tar.gz"
      sha256 "025b6cbe3c032996819dce625dc9a6aa376ffd585eda7d06e25ea1f3d3ec0b07"
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
