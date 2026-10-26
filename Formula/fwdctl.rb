class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.217"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.217/fwdctl_v0.5.217_darwin_arm64.tar.gz"
      sha256 "d6ae751563f1aee2addc932e1acfac645b5f715cd5071d7737d29b3e9076ab1a"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.217/fwdctl_v0.5.217_darwin_amd64.tar.gz"
      sha256 "a023f470793b3a2d410662bc69e87f2a6e3b1a9de2fef197df9099805694ff9e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.217/fwdctl_v0.5.217_linux_amd64.tar.gz"
      sha256 "40420eb32f8e3fa1d867480d46a711442447c94c81a020e32d735f3027b910c3"
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
