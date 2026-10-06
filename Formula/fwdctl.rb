class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.92"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.92/fwdctl_v0.5.92_darwin_arm64.tar.gz"
      sha256 "cca4d2d385575deaec4d85d82f31f7407e901fb248a14f36ac5524e00e852648"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.92/fwdctl_v0.5.92_darwin_amd64.tar.gz"
      sha256 "36be60f1b2350a379fd43a4ba535f3dd74bbb5c2223003f30e60f5aa76a9ef57"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.92/fwdctl_v0.5.92_linux_amd64.tar.gz"
      sha256 "8803e6e430c24c3884cf1dc78e71494020d6ab6692428ea4c8f94a298e85e149"
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
