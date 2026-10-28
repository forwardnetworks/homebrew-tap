class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.245"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.245/fwdctl_v0.5.245_darwin_arm64.tar.gz"
      sha256 "4076527b6c0581c8e213dd5e6e6974fc46c804bf6859cdc96909b1f19e1db761"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.245/fwdctl_v0.5.245_darwin_amd64.tar.gz"
      sha256 "63bb2fe2345c22cc371f5bf2af29f3301271e5535fb3810d5aad37129b5d6a0b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.245/fwdctl_v0.5.245_linux_amd64.tar.gz"
      sha256 "5f9e5c47895124d77152fcd61a719c407b4ecc8304401228594c7ba3f72f3fb2"
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
