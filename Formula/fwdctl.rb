class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.288"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.288/fwdctl_v0.5.288_darwin_arm64.tar.gz"
      sha256 "ea0fa8ee3eb22d588a814a1b6e76009decae1ff3cf3790236c7cc1c7dfb92f2f"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.288/fwdctl_v0.5.288_darwin_amd64.tar.gz"
      sha256 "19c1cffb0697adc7c74ec630a1590d6f7c49469125e8e293eec77dbd450968d9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.288/fwdctl_v0.5.288_linux_amd64.tar.gz"
      sha256 "3df59f53d89f5763f36face417a0b712ead6fcb187dd0cb7d4fa1844585060d3"
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
