class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.110"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.110/fwdctl_v0.5.110_darwin_arm64.tar.gz"
      sha256 "4cfb00096f1be0cc616adf931695aa2c9234eff0d17261aa733c8d2e3a75634f"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.110/fwdctl_v0.5.110_darwin_amd64.tar.gz"
      sha256 "4c25023ed0def32d586bf49ffb9447d4c7b6b91c66598348bd99326bcc94ed83"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.110/fwdctl_v0.5.110_linux_amd64.tar.gz"
      sha256 "2dcd09736c4b986186ed84a1bbf4aef26227f4b9a48cb08790e36c49aee829a3"
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
