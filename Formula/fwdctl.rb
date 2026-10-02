class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.63"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.63/fwdctl_v0.5.63_darwin_arm64.tar.gz"
      sha256 "44e9aa8df0f872c5d10fd2591bd2df5e70d8c21fe2047fab9814fb3072b1a129"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.63/fwdctl_v0.5.63_darwin_amd64.tar.gz"
      sha256 "070ce28341b4b25202e9fd71a8cfa6938430ddc7c4a72efa0f67977a9659cd62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.63/fwdctl_v0.5.63_linux_amd64.tar.gz"
      sha256 "d2e393b19e5b5057fae3c89116ce1a25f01aff3950f2704c3aa1cab0d3768d15"
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
