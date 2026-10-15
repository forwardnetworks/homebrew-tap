class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.106"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.106/fwdctl_v0.5.106_darwin_arm64.tar.gz"
      sha256 "f232dd8ec5956d56669fda0aad69101c93c4f03617e64648d5c7e575c18547db"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.106/fwdctl_v0.5.106_darwin_amd64.tar.gz"
      sha256 "3c9d08da0e7f112c65b0f143e2b36324cd3a6ee282101cf8dde6360803df4974"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.106/fwdctl_v0.5.106_linux_amd64.tar.gz"
      sha256 "c0b472674f9d1d5ca3de56fde639b3a612cf6cf25c25efce079882af64631244"
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
