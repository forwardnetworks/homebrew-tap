class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.264"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.264/fwdctl_v0.5.264_darwin_arm64.tar.gz"
      sha256 "87ad0e4874b307b5454227cc701bec19eea0d1852d6e41c75135884235859ad8"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.264/fwdctl_v0.5.264_darwin_amd64.tar.gz"
      sha256 "fa80c0c78667345778c223a764b537d8425f569700115c082af08f9b202a0031"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.264/fwdctl_v0.5.264_linux_amd64.tar.gz"
      sha256 "97e8f42ba6da6f84439f2048a7c4594feee727bf58b397b57a5c3b360c8700b9"
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
