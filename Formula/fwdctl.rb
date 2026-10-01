class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.47"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.47/fwdctl_v0.5.47_darwin_arm64.tar.gz"
      sha256 "1c46f8b8755d8a6949598cf72e650a7121e44f87ee33103b93e4c2bb515593be"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.47/fwdctl_v0.5.47_darwin_amd64.tar.gz"
      sha256 "7cffa9ae51507500882fb0e098bec7b296d75ffa8ef3b58dcf09cb195531516b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.47/fwdctl_v0.5.47_linux_amd64.tar.gz"
      sha256 "2682b0ee782a6ead647b854fbc0d82f8f40678571e2795ff727c45e73689b041"
    end
  end

  def install
    bin.install "fwdctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fwdctl --version")
  end
end
