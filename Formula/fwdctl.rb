class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.164"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.164/fwdctl_v0.5.164_darwin_arm64.tar.gz"
      sha256 "7a62a4e2eb063b90113d185e68ba8ce1bf06699c063198efd5ece47b020ed72d"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.164/fwdctl_v0.5.164_darwin_amd64.tar.gz"
      sha256 "a93dc139127d6e080306c7316c31a2526bd13acc0bc76b14e7a6373533a6f38c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.164/fwdctl_v0.5.164_linux_amd64.tar.gz"
      sha256 "02c858e0d2008e62801e357374ab1ddad9905bd162513da6a34b677e74e1a80e"
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
