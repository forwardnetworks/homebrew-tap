class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.346"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.346/fwdctl_v0.5.346_darwin_arm64.tar.gz"
      sha256 "7c0b343ab1faecbbf41920f11d61320b22e537dee41fce3dbe63ed401722bba4"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.346/fwdctl_v0.5.346_darwin_amd64.tar.gz"
      sha256 "6f875476860f80861bd9ca47443de2015caf0eecd4ec71f8e6b3aadadf0531f6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.346/fwdctl_v0.5.346_linux_amd64.tar.gz"
      sha256 "f3e39a0a23cf4d8a6a3bea5f8f8e25f604bf2aa91b3dae6aa3ebb793c927ab04"
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
