class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.220"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.220/fwdctl_v0.5.220_darwin_arm64.tar.gz"
      sha256 "47549fbcccc0f9671d9540644f77e1d22a93671386b2572d50d17b4ceaae2aec"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.220/fwdctl_v0.5.220_darwin_amd64.tar.gz"
      sha256 "c24cdb37d34dc0fd4f10d4677ad0809a11216fd3581cc1f43cbaccc65a46b851"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.220/fwdctl_v0.5.220_linux_amd64.tar.gz"
      sha256 "4864a46bf707f91012a9261fbae862c725d6909785825429280397a61eece6e3"
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
