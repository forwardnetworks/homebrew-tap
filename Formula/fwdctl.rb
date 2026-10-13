class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.100"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.100/fwdctl_v0.5.100_darwin_arm64.tar.gz"
      sha256 "a47a46b8006f2743458b8bfe9f8982ec16d385ec564b9ec0ebcc465cd8ff07c0"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.100/fwdctl_v0.5.100_darwin_amd64.tar.gz"
      sha256 "2c24f99ece39f531d6efdb033f5813a57bde83a5af6b04afe7f6fd5f9bb2a68d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.100/fwdctl_v0.5.100_linux_amd64.tar.gz"
      sha256 "9a50ccfd8dd22d624394d1ce94ef471711635c26aaf71854cdf19763e201586b"
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
