class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.308"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.308/fwdctl_v0.5.308_darwin_arm64.tar.gz"
      sha256 "e76f6f8c229658bb9093754ad1a6a94841743e540e01f8f71cc7743c159a6ef8"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.308/fwdctl_v0.5.308_darwin_amd64.tar.gz"
      sha256 "da593976d0461888c33931e3c94af717a84dc10ba5d8c5cc5d19e9a4e8d054ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.308/fwdctl_v0.5.308_linux_amd64.tar.gz"
      sha256 "3eab87894a16e95ec993c566bbbebb7ddbb84aab33950f23a420cba524578b72"
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
