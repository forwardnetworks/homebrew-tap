class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.295"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.295/fwdctl_v0.5.295_darwin_arm64.tar.gz"
      sha256 "48f4bc816c82ee98e639b71264dc166cd9986015ced5ee77e3e1c748304c1ad0"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.295/fwdctl_v0.5.295_darwin_amd64.tar.gz"
      sha256 "5ee38b00d6ff625994629c46d3e7b0db5f0d6e060307d668b50465e9b40251dc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.295/fwdctl_v0.5.295_linux_amd64.tar.gz"
      sha256 "07554da6b54236d0860ef87b6656695366b0000884e53c0be681263bc5b295bf"
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
