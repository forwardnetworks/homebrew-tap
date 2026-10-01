class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.41"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.41/fwdctl_v0.5.41_darwin_arm64.tar.gz"
      sha256 "743bf6fa60cb72757e524ed45c21b0823aca0ffd9e60802ae3840ad7be900e26"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.41/fwdctl_v0.5.41_darwin_amd64.tar.gz"
      sha256 "5e42f63c3cd5646d2f08abbb22bab6bfcbb81e216c5faac0cf0a07ff2a2d3428"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.41/fwdctl_v0.5.41_linux_amd64.tar.gz"
      sha256 "6515144ccb7884b5838bb2131939f4b5b13c41f207165b591e1ba165648a584b"
    end
  end

  def install
    bin.install "fwdctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fwdctl --version")
  end
end
