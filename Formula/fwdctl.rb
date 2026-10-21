class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.177"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.177/fwdctl_v0.5.177_darwin_arm64.tar.gz"
      sha256 "dccefec0aa658edce27d2912ac0bcc4a63de99dbc85724699dc047371feccaaf"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.177/fwdctl_v0.5.177_darwin_amd64.tar.gz"
      sha256 "2727ee0141d801f63baeb1638df5c47961f50e51a97f42e5838c534504d632bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.177/fwdctl_v0.5.177_linux_amd64.tar.gz"
      sha256 "0683d1cc709899bb5783e0fb1cf1e8c6fe4ae7ea5aa6d6c901cd0827b73a7888"
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
