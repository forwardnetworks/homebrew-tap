class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.176"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.176/fwdctl_v0.5.176_darwin_arm64.tar.gz"
      sha256 "bc8da221f37ce1a7abb268544f7cc6a49f003f0c1800b19607270d97569b26c4"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.176/fwdctl_v0.5.176_darwin_amd64.tar.gz"
      sha256 "b7eb810433827b4d28d92be3daa11f2f92caeb1592c65648d62f09c09eaede2a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.176/fwdctl_v0.5.176_linux_amd64.tar.gz"
      sha256 "5a9a623dd1bdbe1d7695f1f7a9ff5293f356bf4395a6e74652375280a52bf758"
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
