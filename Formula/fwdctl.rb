class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.283"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.283/fwdctl_v0.5.283_darwin_arm64.tar.gz"
      sha256 "392b1839b4b8484d65cb4eaa0bca69b02c3d14dc4fa3caa8e2e5b4a435b13a5b"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.283/fwdctl_v0.5.283_darwin_amd64.tar.gz"
      sha256 "4e6c27b8d6746e469d4bc97e574856835f05442444d3a30c890b4153747605af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.283/fwdctl_v0.5.283_linux_amd64.tar.gz"
      sha256 "48962b835d0c65a5aac5d7e2d7a66e13658fb2b1dcb602874e04708081a52572"
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
