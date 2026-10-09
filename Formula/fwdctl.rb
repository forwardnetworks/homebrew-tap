class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.96"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.96/fwdctl_v0.5.96_darwin_arm64.tar.gz"
      sha256 "70158d693d81c3e9b4be4006cb483a8eb1cf242b09c61e048ef33817f641d637"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.96/fwdctl_v0.5.96_darwin_amd64.tar.gz"
      sha256 "34e0d34fc012b391d309135005bf1ef89930e533a1ff52633c2888992d78bf99"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.96/fwdctl_v0.5.96_linux_amd64.tar.gz"
      sha256 "893b508018d9e6f1f2e48bfa14708174133efc4908e2ee0122b4678de61e03bb"
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
