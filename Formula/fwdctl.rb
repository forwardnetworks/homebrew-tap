class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.322"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.322/fwdctl_v0.5.322_darwin_arm64.tar.gz"
      sha256 "09de9e6056c245d5c62bf94538c92f99d28a18741fcc0281253450eda6a5dbf8"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.322/fwdctl_v0.5.322_darwin_amd64.tar.gz"
      sha256 "3565acb28a647ee5bd5c19317498444d5b2831bbeef4a86fa7eb56c913d1e1cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.322/fwdctl_v0.5.322_linux_amd64.tar.gz"
      sha256 "0bc5acddad55522bf30636289bbcd6be5684341f67d6e4d743076b33af2e63bd"
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
