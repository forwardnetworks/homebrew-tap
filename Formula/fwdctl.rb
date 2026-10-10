class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.98"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.98/fwdctl_v0.5.98_darwin_arm64.tar.gz"
      sha256 "94a606492d35d737f512aaaa0852306126cc4d42909b9bca4e3bcf49cbc2acd4"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.98/fwdctl_v0.5.98_darwin_amd64.tar.gz"
      sha256 "f51c9c377d31ef1d4581ee21d23f4b75cf08a25a44911aee0b0670fe97f7d566"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.98/fwdctl_v0.5.98_linux_amd64.tar.gz"
      sha256 "d8e94e02e1514cf9d66f56a44d522a265bccf858710dd700ff7097581f799b09"
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
