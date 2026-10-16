class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.140"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.140/fwdctl_v0.5.140_darwin_arm64.tar.gz"
      sha256 "7b4cc1583927af8d2eebac2ad81221cefc7723ff1413a38c7d016f9a0bfc4d68"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.140/fwdctl_v0.5.140_darwin_amd64.tar.gz"
      sha256 "a965f4707481be0ecca5995773d759e0e40010d0f15d01b6f6d27d0df646c975"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.140/fwdctl_v0.5.140_linux_amd64.tar.gz"
      sha256 "96cb7508f113a673c2ba5a40ed4c44f925cb5476e918579abe3838b36e16f832"
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
