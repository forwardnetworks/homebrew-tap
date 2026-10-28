class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.249"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.249/fwdctl_v0.5.249_darwin_arm64.tar.gz"
      sha256 "d98c8e5a761bc0d5a04aad73fba94864dfc4adf08d40add9e8cdf93e99915f37"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.249/fwdctl_v0.5.249_darwin_amd64.tar.gz"
      sha256 "de2994962fd22b28e4d18aef28eb292615e5c28ba63bf566610b6e78d42b9852"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.249/fwdctl_v0.5.249_linux_amd64.tar.gz"
      sha256 "24c253f87037e03ce2e05c17f2e96aedc3f33b30b1341960d6d40f1906fc9065"
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
