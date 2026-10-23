class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.202"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.202/fwdctl_v0.5.202_darwin_arm64.tar.gz"
      sha256 "488edece0561bd73d5c56963f2af74396bab52f34ddb35f65eb5468da55a5ff8"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.202/fwdctl_v0.5.202_darwin_amd64.tar.gz"
      sha256 "ecc595da3c01d351e235661637a912e9b6550b331a60b5bf09005b8f24e5a5a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.202/fwdctl_v0.5.202_linux_amd64.tar.gz"
      sha256 "5eb772d12910142bf4848698256a924654ce15c1eff13b4b17334c08f3042c43"
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
