class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.44"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.44/fwdctl_v0.5.44_darwin_arm64.tar.gz"
      sha256 "3a3f8c9462bd11a7c69784aa415995c23dc1f9be6c27773590784272eb96ec31"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.44/fwdctl_v0.5.44_darwin_amd64.tar.gz"
      sha256 "925f70ffb2f887e06168d85f31b76ca21617288666df62e0a4062e4dbc35f85a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.44/fwdctl_v0.5.44_linux_amd64.tar.gz"
      sha256 "1e8467506abef9a30f6e052647dc256b872482a68478ca40879abdf6e07311b1"
    end
  end

  def install
    bin.install "fwdctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fwdctl --version")
  end
end
