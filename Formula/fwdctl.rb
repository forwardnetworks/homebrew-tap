class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.68"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.68/fwdctl_v0.5.68_darwin_arm64.tar.gz"
      sha256 "02ca2f7f7a6cd6606dc24dfb18f3a0510b0cfcec4f643a9fbf482a38d6655aab"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.68/fwdctl_v0.5.68_darwin_amd64.tar.gz"
      sha256 "141337526d513bba597231286c70bbf420757fc42096fd72e1a90a49b71e5a98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.68/fwdctl_v0.5.68_linux_amd64.tar.gz"
      sha256 "791565de25bec6255b3aad90db80ad69da5df25bcbb286d154084ff517647d72"
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
