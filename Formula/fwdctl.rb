class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.356"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.356/fwdctl_v0.5.356_darwin_arm64.tar.gz"
      sha256 "c1817fb2d492a398c550578e3cc3c8eebf28f7939cc90559130f0e9637fd66d4"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.356/fwdctl_v0.5.356_darwin_amd64.tar.gz"
      sha256 "b38427a5df48fce4738bbc2a66570fe2a87b767206d8344a62bce48a8c6bdaf5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.356/fwdctl_v0.5.356_linux_amd64.tar.gz"
      sha256 "81eaa10efe1618e210b7d592efc2f49cb57fbbd7ec10c5f3b00aabc31568c5bd"
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
