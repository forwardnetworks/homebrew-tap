class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.118"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.118/fwdctl_v0.5.118_darwin_arm64.tar.gz"
      sha256 "8806c34e6885d12dd5e76a2fc89d19bde017ae1dee584fc768759b2d824e0f44"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.118/fwdctl_v0.5.118_darwin_amd64.tar.gz"
      sha256 "2a68f31792e7733276118682872cc811144dd4ce0fcac804654609833f6955b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.118/fwdctl_v0.5.118_linux_amd64.tar.gz"
      sha256 "e4973cf15edf75bfb9681a9ffa3441052c648db2f93176e16cff777d02573b1d"
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
