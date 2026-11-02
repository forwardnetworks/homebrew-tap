class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.266"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.266/fwdctl_v0.5.266_darwin_arm64.tar.gz"
      sha256 "d7e80316f3545fba385479a4b918384d520f5a8172390325acc52dd26dd96eb9"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.266/fwdctl_v0.5.266_darwin_amd64.tar.gz"
      sha256 "f93a5d262be6daaf81682bc2205e1421861ceb3dd861bda23e2e707bd1a99f85"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.266/fwdctl_v0.5.266_linux_amd64.tar.gz"
      sha256 "de82ea2aa3eef1edb0698f838ffbc217eca799caf3c5f266539c8341fd337536"
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
