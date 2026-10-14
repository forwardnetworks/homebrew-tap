class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.102"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.102/fwdctl_v0.5.102_darwin_arm64.tar.gz"
      sha256 "dd5e330412af8a9d23440e31594a61a8cef114bda872967fedc9d8b8fc590561"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.102/fwdctl_v0.5.102_darwin_amd64.tar.gz"
      sha256 "de63ebe1802cf5cc8068469ea9a31ff6329ff3a915ef2a3fd5437fd6a21c6f2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.102/fwdctl_v0.5.102_linux_amd64.tar.gz"
      sha256 "4c692be35bd400d0e54df3ce54ac2dd12f240bf0b6a208e4ae8ae956f01156d4"
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
