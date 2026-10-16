class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.122"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.122/fwdctl_v0.5.122_darwin_arm64.tar.gz"
      sha256 "ebde12ac217f160d3578a06008a102659e7ff4276ff568dd9d7e583b56506b86"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.122/fwdctl_v0.5.122_darwin_amd64.tar.gz"
      sha256 "9594a251db9b9a1c0a8c492bde132d6ffa13f0279c7072e978dcc9eeedfb32ad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.122/fwdctl_v0.5.122_linux_amd64.tar.gz"
      sha256 "bae1b9407655b639978ff474d4ce7790dfc9edb8a2b026b20e9398134a3786c4"
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
