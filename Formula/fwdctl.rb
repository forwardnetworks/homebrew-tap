class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.254"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.254/fwdctl_v0.5.254_darwin_arm64.tar.gz"
      sha256 "8c648c0f97dbfc23261c4aebd3739d830ca1adcf39c0003f8868afe8d50249e7"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.254/fwdctl_v0.5.254_darwin_amd64.tar.gz"
      sha256 "1d7312a16b75064b1007526ce8b9cf63a623b2a235d164c1f2506c21bd49f76e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.254/fwdctl_v0.5.254_linux_amd64.tar.gz"
      sha256 "5d0b298333963f0e452e9f21befd9d371986c4ce0a6722199393a265ae9cb573"
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
