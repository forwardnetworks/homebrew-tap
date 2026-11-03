class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.272"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.272/fwdctl_v0.5.272_darwin_arm64.tar.gz"
      sha256 "4ac5896e41f5907537c233a9fd00405e07ed2aa29152665d8d0a18bde57213ca"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.272/fwdctl_v0.5.272_darwin_amd64.tar.gz"
      sha256 "a4c62077fc929b12642809ac1cb742b19defad65453a382790d843a20c13509c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.272/fwdctl_v0.5.272_linux_amd64.tar.gz"
      sha256 "6612ef74bbb8c34e49071fa7dcc854390983b2c8b3546e41f7009c7afc8fa621"
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
