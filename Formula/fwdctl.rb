class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.250"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.250/fwdctl_v0.5.250_darwin_arm64.tar.gz"
      sha256 "f29efb749bba16224345cc95a2a4df9408861dec5e326965294c7eba85ae2d4e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.250/fwdctl_v0.5.250_darwin_amd64.tar.gz"
      sha256 "e41f28fa4a83c1a8eebebc8f370cbbb98f057a33c56a0f0abc8111db84d3160d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.250/fwdctl_v0.5.250_linux_amd64.tar.gz"
      sha256 "477f4cd019d4977c86a3c5b00601c2af6019f8c89dea84a3d4e2413746071fad"
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
