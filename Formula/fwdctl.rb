class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.282"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.282/fwdctl_v0.5.282_darwin_arm64.tar.gz"
      sha256 "bd48eb309aee0701459b01aacb01816d2fd69833295d3369fba898272da72ba6"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.282/fwdctl_v0.5.282_darwin_amd64.tar.gz"
      sha256 "6c477d5125dfc746734e96ac20ae7c9a349ff609b687c4f84204e626f41a831f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.282/fwdctl_v0.5.282_linux_amd64.tar.gz"
      sha256 "e8867c9a4c5f81d83244d1e31cc67405221544c62cab7d4ef53681359727e005"
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
