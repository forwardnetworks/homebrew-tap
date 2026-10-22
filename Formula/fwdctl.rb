class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.192"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.192/fwdctl_v0.5.192_darwin_arm64.tar.gz"
      sha256 "acb07d6aff131bb05b008d193fa5c78fd5ebf97f8717df60f751ead2d0d291da"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.192/fwdctl_v0.5.192_darwin_amd64.tar.gz"
      sha256 "c697aaa7a4e1ab7cc818a96af6760adae3fae01f218ae0156cdd120eeb31bb3f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.192/fwdctl_v0.5.192_linux_amd64.tar.gz"
      sha256 "88852d813da43b398267a0f3e65cc5d0077f35ab35d7a3388d3191d4dea75257"
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
