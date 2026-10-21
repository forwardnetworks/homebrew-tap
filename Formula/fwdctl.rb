class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.179"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.179/fwdctl_v0.5.179_darwin_arm64.tar.gz"
      sha256 "eed288430c95015fcc28325bf447d9490e0b26b6e3fe6bc8cacff8aa27343288"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.179/fwdctl_v0.5.179_darwin_amd64.tar.gz"
      sha256 "a2ea18134ed50a946b0689e35f3c7a0da9d6ab2567c3454e7378c83d9a5df37e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.179/fwdctl_v0.5.179_linux_amd64.tar.gz"
      sha256 "3ae3ee21a0ac3ccca3e53b72085539e10ab3e63fa339e16ddcbbeb2a801c502d"
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
