class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.175"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.175/fwdctl_v0.5.175_darwin_arm64.tar.gz"
      sha256 "4b1f34bd38e22d585970c1581b6dd73578f305aaa79aab8997cc8b9290d8402c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.175/fwdctl_v0.5.175_darwin_amd64.tar.gz"
      sha256 "7406555b11ef50c4e7f727f77c69d96b9f97022be9e920d0f9361d4c057eff31"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.175/fwdctl_v0.5.175_linux_amd64.tar.gz"
      sha256 "6f7df068ad0c776a29aab327c39caaadf2038af48e4830f621d9ba694b3f2578"
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
