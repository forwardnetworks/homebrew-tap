class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.310"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.310/fwdctl_v0.5.310_darwin_arm64.tar.gz"
      sha256 "a06434f426ee2532284e8904e011883062da5f7fcc3f2334e0c379b2fc3c589e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.310/fwdctl_v0.5.310_darwin_amd64.tar.gz"
      sha256 "be9ba45f45f24d8f770af9b267412ddba1d79b3d93b1804dfd382cefb33d2292"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.310/fwdctl_v0.5.310_linux_amd64.tar.gz"
      sha256 "d2c03c326279239a20170bb49a625a6c24e23ab462452d59d0995f56085e363a"
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
