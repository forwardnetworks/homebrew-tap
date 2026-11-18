class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.351"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.351/fwdctl_v0.5.351_darwin_arm64.tar.gz"
      sha256 "ffb928cca026ea55c1a70ad037d22e6d79139ab215f326229847690577aba6c7"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.351/fwdctl_v0.5.351_darwin_amd64.tar.gz"
      sha256 "8015e54d3c830553b8da96b1e7f488fe82c536f92fa48f3d5a381e5ffdcd8581"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.351/fwdctl_v0.5.351_linux_amd64.tar.gz"
      sha256 "244f9922cd0a9c9c54521ca034df38f948ad346eb2bb41c9193e9aeff708c7c2"
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
