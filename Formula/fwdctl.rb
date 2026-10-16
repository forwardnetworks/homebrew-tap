class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.121"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.121/fwdctl_v0.5.121_darwin_arm64.tar.gz"
      sha256 "33fd6001bb1f885786f78bdee025841b822025946ec2c7e4f09fb0eeb7f32eef"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.121/fwdctl_v0.5.121_darwin_amd64.tar.gz"
      sha256 "ae0d5dbe0152fef00a5fffa2a67a631f35b20bf77fe6b92fcbee10e3e3dd5db0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.121/fwdctl_v0.5.121_linux_amd64.tar.gz"
      sha256 "65163234cae76516aa787840346f95563e06dbef33cd815be80b23a68c9fe117"
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
