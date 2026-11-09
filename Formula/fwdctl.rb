class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.302"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.302/fwdctl_v0.5.302_darwin_arm64.tar.gz"
      sha256 "c6383e6da1de8a9a8437d25c2af9cc53e49ba1d4f90180344708c85895d45a66"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.302/fwdctl_v0.5.302_darwin_amd64.tar.gz"
      sha256 "cc1d82c29e97087d501b09fdc201e5b88f7940b9bd127f2e70ac8dff88bce96d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.302/fwdctl_v0.5.302_linux_amd64.tar.gz"
      sha256 "ff05d579e18424b611a14e2df4b6cd18b87c2c88058184a4065847fe17c909d4"
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
