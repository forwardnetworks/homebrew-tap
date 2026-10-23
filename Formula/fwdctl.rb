class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.203"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.203/fwdctl_v0.5.203_darwin_arm64.tar.gz"
      sha256 "680e31f4f019ad6f93ed7a26d32db242f37702dbfd77f66221dec621d7fe6a65"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.203/fwdctl_v0.5.203_darwin_amd64.tar.gz"
      sha256 "e11fecb1f75a8df4f7120e19884e3f899fc2ffa0efca2bb6fa1732955e942194"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.203/fwdctl_v0.5.203_linux_amd64.tar.gz"
      sha256 "0e71b38ab16631e79690d2eba66502454619bc71bf677a61f35447571378872c"
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
