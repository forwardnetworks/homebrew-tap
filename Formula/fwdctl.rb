class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.370"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.370/fwdctl_v0.5.370_darwin_arm64.tar.gz"
      sha256 "a0f6244b020a47562e5dd6208bc4f3465b41afe33e785ad6f879745494c4b045"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.370/fwdctl_v0.5.370_darwin_amd64.tar.gz"
      sha256 "988101407e00cfad9d19fa82738a9e3ef34c8698316a3df1b855f064f2c2c0b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.370/fwdctl_v0.5.370_linux_amd64.tar.gz"
      sha256 "f2d540b5e37e9de7f4385972abe26d97743a7cf3f7bedb8950be6e3ba9b2bf71"
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
