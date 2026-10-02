class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.54"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.54/fwdctl_v0.5.54_darwin_arm64.tar.gz"
      sha256 "4cb8bf3d8804decbe35155bd7e5ecb539b0abe96551f9b68bd2851e3da34df19"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.54/fwdctl_v0.5.54_darwin_amd64.tar.gz"
      sha256 "4c56c82196e18821e7c43e4601372fd76165d3e9817034f554df92019acc39b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.54/fwdctl_v0.5.54_linux_amd64.tar.gz"
      sha256 "1ba5d00e4aec1f4aba91345d06796c58863ce201839ad02422e9af3717fb4665"
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
