class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.269"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.269/fwdctl_v0.5.269_darwin_arm64.tar.gz"
      sha256 "28ed57480991bdeee820c285e00fb2e045c1b80269ea1ad4021eb65381f500a4"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.269/fwdctl_v0.5.269_darwin_amd64.tar.gz"
      sha256 "5ec72ddbc64d2d73b206b3ea1b800191790a858110c0d09ae3a8e48c99bc1028"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.269/fwdctl_v0.5.269_linux_amd64.tar.gz"
      sha256 "c78860a7f2982878faaa022a578a38e29b111d699dfd7d8d9ea611a473190100"
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
