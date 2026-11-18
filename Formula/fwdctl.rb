class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.357"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.357/fwdctl_v0.5.357_darwin_arm64.tar.gz"
      sha256 "add6861525b49e05b2be603ffeaed8e59434ffb86d7aec3a32e5d47f7dcba019"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.357/fwdctl_v0.5.357_darwin_amd64.tar.gz"
      sha256 "a065f037693434dfa85544f97302ef3e6260769235ea96f9b47e53ecf26cccce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.357/fwdctl_v0.5.357_linux_amd64.tar.gz"
      sha256 "a166adf8509c975cea849bc290fa842d44565c135add170a36b1ba8e375b833e"
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
