class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.81"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.81/fwdctl_v0.5.81_darwin_arm64.tar.gz"
      sha256 "5fa478dab1989a258f789997ef4f2c1454361ca36808b61f0c83ebc76b55e6d5"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.81/fwdctl_v0.5.81_darwin_amd64.tar.gz"
      sha256 "8a676cfe22244eacd4c4dc7214f1c4c22c3566c677c33414711bb76636b03443"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.81/fwdctl_v0.5.81_linux_amd64.tar.gz"
      sha256 "9c54ef608523835cccf92c54444bc499528fc84ad0cb16ad633dc922b6e31e3c"
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
