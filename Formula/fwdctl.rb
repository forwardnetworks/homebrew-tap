class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.243"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.243/fwdctl_v0.5.243_darwin_arm64.tar.gz"
      sha256 "e4ad74a49c4c7f0063c07b5fec713302c9349dd7dd4a03c6fe56e74b963e1e4e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.243/fwdctl_v0.5.243_darwin_amd64.tar.gz"
      sha256 "71ff39d40901811c2cf205f18f6029b9699980ab4105c903e23a9592e6c081b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.243/fwdctl_v0.5.243_linux_amd64.tar.gz"
      sha256 "ea5acad023d31f1f959f0468b05f92ed4d11f94d10d47995f916819411327d2f"
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
