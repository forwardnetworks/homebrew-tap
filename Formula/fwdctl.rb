class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.70"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.70/fwdctl_v0.5.70_darwin_arm64.tar.gz"
      sha256 "40e290392f064add9bfd882b050b471c02177f401720b1c22cbafeda13475a58"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.70/fwdctl_v0.5.70_darwin_amd64.tar.gz"
      sha256 "11f33ae4aa64cd5458e9f9a92f3d4abb15788a33f484357b04b4abf9300c36c8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.70/fwdctl_v0.5.70_linux_amd64.tar.gz"
      sha256 "dfa94137bb0d3c2d40ffc531715f1bfbf90f254d57bab4d7360b698e2cba903c"
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
