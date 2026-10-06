class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.87"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.87/fwdctl_v0.5.87_darwin_arm64.tar.gz"
      sha256 "e0890101f200de2b90a671d5607afe0191e39d6288c1c8f8e0950ef0207f6c10"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.87/fwdctl_v0.5.87_darwin_amd64.tar.gz"
      sha256 "553a31c65578093f64ada6a4e801cc8cb028932f6d5e6c4c83c96950ab75abbb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.87/fwdctl_v0.5.87_linux_amd64.tar.gz"
      sha256 "30228464dadcd95ff9f190cee5e736808a7002247ff0bbaab5064e183ad7b72d"
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
