class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.350"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.350/fwdctl_v0.5.350_darwin_arm64.tar.gz"
      sha256 "aff17ac1f25aa410e0d87f6c1cbda30c99d9314ffbcb83734bafb94becce73cb"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.350/fwdctl_v0.5.350_darwin_amd64.tar.gz"
      sha256 "83483ea79a379b01d8a39f655b2da1d9b435bc023b3c3ddd8b6853c3dfa3b729"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.350/fwdctl_v0.5.350_linux_amd64.tar.gz"
      sha256 "6b386b0c2fa3a5fb245adfb14c1bb7f790885d9dc06434e8c5d6f6de8919b67c"
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
