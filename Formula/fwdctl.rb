class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.116"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.116/fwdctl_v0.5.116_darwin_arm64.tar.gz"
      sha256 "f2dce472f8fe81548cfff92bc6b35cbf61a3ab5b54925bfbeae2979f6511f489"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.116/fwdctl_v0.5.116_darwin_amd64.tar.gz"
      sha256 "e160576205bbd61783fca51d1be4e6052de0f1f0af4cdf41645747d727194c3f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.116/fwdctl_v0.5.116_linux_amd64.tar.gz"
      sha256 "4ab41bfdcfd6f491a86b979783e0b098948a4acd15d4e588348f8a795adaa3e4"
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
