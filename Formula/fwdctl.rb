class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.349"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.349/fwdctl_v0.5.349_darwin_arm64.tar.gz"
      sha256 "b25691c3d5bbeff5cdd9bc3723cce01839abecaa7f81a08b1df92ea4d3be12f3"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.349/fwdctl_v0.5.349_darwin_amd64.tar.gz"
      sha256 "905e04b5400f6c46dbd40eaaeeb8ce69625db125e1bf04c4c196256c628bede8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.349/fwdctl_v0.5.349_linux_amd64.tar.gz"
      sha256 "60e1e1db949426a0248416b609d6c3d464af856f95c8d5bfb394a7d85a28ad39"
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
