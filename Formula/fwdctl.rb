class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.259"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.259/fwdctl_v0.5.259_darwin_arm64.tar.gz"
      sha256 "265923312f11e1b072b9b130f3f9786b6a1f7f6478b41288b5b3cea854cf660e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.259/fwdctl_v0.5.259_darwin_amd64.tar.gz"
      sha256 "238ee95d7734f0729da1dd1f36c149acd106df71590b6c766cbcc941909c86f6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.259/fwdctl_v0.5.259_linux_amd64.tar.gz"
      sha256 "75cc2fff1de93f50b85ea4c6429e1cf43e92f906ad146e914df84643a17a832d"
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
