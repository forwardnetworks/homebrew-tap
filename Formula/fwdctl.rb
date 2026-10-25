class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.209"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.209/fwdctl_v0.5.209_darwin_arm64.tar.gz"
      sha256 "4494218db25d80c32e2cb10ce3062ad5e270bac3d19bcd5f00be6d575f7b6de1"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.209/fwdctl_v0.5.209_darwin_amd64.tar.gz"
      sha256 "521e390671c29daba143a5efd249ffd947f6eaff647fc66158e04c3f1f516642"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.209/fwdctl_v0.5.209_linux_amd64.tar.gz"
      sha256 "7489508927cfd5eb9dcd6c66c32095c9f1b2c170618ed7f384c1ac3bc298fbf5"
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
