class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.130"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.130/fwdctl_v0.5.130_darwin_arm64.tar.gz"
      sha256 "c085ec7a9aa45a3a8d5845180dfd94df8d38201da88957ebab58f623df03b9e6"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.130/fwdctl_v0.5.130_darwin_amd64.tar.gz"
      sha256 "d4a1d5690e6313c6ed47d62f3bffbcfcf753eea8eecf40651b03070831584a1b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.130/fwdctl_v0.5.130_linux_amd64.tar.gz"
      sha256 "310ae7219969a019b7e8eaab8bb44bbb1d15dd1d2928feeb0223c79f99ff0ef2"
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
