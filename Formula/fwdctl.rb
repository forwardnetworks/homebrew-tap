class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.328"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.328/fwdctl_v0.5.328_darwin_arm64.tar.gz"
      sha256 "4f777d1a02f276475a56c2c7cc5be7eb18bfe42157cd8504eecd23137cf37790"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.328/fwdctl_v0.5.328_darwin_amd64.tar.gz"
      sha256 "76b789a3aafb9761f91899b17e60cad81750141833781c624ee8005999b91a36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.328/fwdctl_v0.5.328_linux_amd64.tar.gz"
      sha256 "bde37f3e7cdf3ae9164a28d482cec7b1050f62fbaae4ff158c5669d1e27917a9"
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
