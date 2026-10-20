class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.174"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.174/fwdctl_v0.5.174_darwin_arm64.tar.gz"
      sha256 "68c12ea1813cfaa0e802ef1962d643645663b128e5efe339b1f0258ef6504cab"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.174/fwdctl_v0.5.174_darwin_amd64.tar.gz"
      sha256 "d86bad4695e5f388000794f72ef586888531832e2e5cfcde659078f1d7cc6c41"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.174/fwdctl_v0.5.174_linux_amd64.tar.gz"
      sha256 "59b30cc5ef304af6121d0e334383e4469e6321c41aa7a438709bde9d93e1fc21"
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
