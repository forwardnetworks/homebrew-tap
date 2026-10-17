class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.158"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.158/fwdctl_v0.5.158_darwin_arm64.tar.gz"
      sha256 "ce60e570b9d5c796fd7e38d6eb644960920e3244d2268b9c3ed30dfa0a48a027"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.158/fwdctl_v0.5.158_darwin_amd64.tar.gz"
      sha256 "322509ce73c89f294b161a7caf4553be3294e2df05038b662bdf91887b50b27f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.158/fwdctl_v0.5.158_linux_amd64.tar.gz"
      sha256 "70169baad529c86393821749711a10f8abd92205cd6007a0987710fc10189347"
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
