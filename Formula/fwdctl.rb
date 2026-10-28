class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.244"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.244/fwdctl_v0.5.244_darwin_arm64.tar.gz"
      sha256 "6c3e60ae52478bf940b460cb0827941330f8d160c17bf52ffd0911ce58e2ef44"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.244/fwdctl_v0.5.244_darwin_amd64.tar.gz"
      sha256 "5fa931ad39cc0d42a9fb2406b4aafaecdae97de5ce4442895c62cc5a0e39b780"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.244/fwdctl_v0.5.244_linux_amd64.tar.gz"
      sha256 "7b5449b5304cb1e05064ef88e7da0ebf068781cca5c604a1d675119ece34bb99"
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
