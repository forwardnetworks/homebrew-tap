class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.224"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.224/fwdctl_v0.5.224_darwin_arm64.tar.gz"
      sha256 "1509886942455042da780ee79f0eca2f15ab74ff3fe68d7eeec707201c75c9ee"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.224/fwdctl_v0.5.224_darwin_amd64.tar.gz"
      sha256 "e05360e914f5f89864702b6d180eb3018178628df6c928305692f90a88de6779"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.224/fwdctl_v0.5.224_linux_amd64.tar.gz"
      sha256 "e66903c118d0b029c2ebeebd9f7576daec6d76761fad98b0d0ef17951c1eb38c"
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
