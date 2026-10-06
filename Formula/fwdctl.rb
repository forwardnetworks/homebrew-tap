class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.89"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.89/fwdctl_v0.5.89_darwin_arm64.tar.gz"
      sha256 "69da7ec4615210ae6bd2edd8e6c827d852f65d67fd541af0023a0ae86aa11bc4"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.89/fwdctl_v0.5.89_darwin_amd64.tar.gz"
      sha256 "29ac1f49e8f861d87c346f462ec1e0c1bcfbac70d3b92121548cf2883d37e471"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.89/fwdctl_v0.5.89_linux_amd64.tar.gz"
      sha256 "5cb4fa99080303cce0d620e33616f9ef11a85214e248fe198c48887d1573cdde"
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
