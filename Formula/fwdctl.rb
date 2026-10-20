class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.166"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.166/fwdctl_v0.5.166_darwin_arm64.tar.gz"
      sha256 "d6817260c25506f03cb3ab8ccfe5c4726637a5908836dc5f926c351f891b004b"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.166/fwdctl_v0.5.166_darwin_amd64.tar.gz"
      sha256 "90bf95f8bf55378d22a61f638b2009fef5618a2da9b077a410ab3d29c4fe7fd0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.166/fwdctl_v0.5.166_linux_amd64.tar.gz"
      sha256 "2054faa4b941374e678c47ded02ef13c86ca9894febfb059fe665a2011a7a631"
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
