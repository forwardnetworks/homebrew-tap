class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.317"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.317/fwdctl_v0.5.317_darwin_arm64.tar.gz"
      sha256 "189d33a491acfff6b255c60717f18cf4cb312ad70535cfe881abb3fed5dbd0e4"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.317/fwdctl_v0.5.317_darwin_amd64.tar.gz"
      sha256 "2d468d6ed089cd789e4a60f3146397701d6168c0da5f084dd2adf87fd82f550c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.317/fwdctl_v0.5.317_linux_amd64.tar.gz"
      sha256 "135c08b7f6e59bff9534f7859ef135bb0dc093e69491dac1b9907eeec45f6cdf"
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
