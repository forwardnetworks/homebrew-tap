class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.123"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.123/fwdctl_v0.5.123_darwin_arm64.tar.gz"
      sha256 "dcfdd1cce5fe92fc5da94698f1904bb649ae1df93206b952a87c66ba45f3a201"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.123/fwdctl_v0.5.123_darwin_amd64.tar.gz"
      sha256 "ad0ce0d7a09dadcca03e75c695dd9aed3a3c8a868e6237fd1f5d276654981db9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.123/fwdctl_v0.5.123_linux_amd64.tar.gz"
      sha256 "e847cd664050a4fc388f2e8481dc92f497c98c18e9bc335d8fa711bea1cb260f"
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
