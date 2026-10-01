class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.39"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.39/fwdctl_v0.5.39_darwin_arm64.tar.gz"
      sha256 "42b62d4593988f6da4156261d4f25106744c1067ff0733791fa6bc48276cfe31"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.39/fwdctl_v0.5.39_darwin_amd64.tar.gz"
      sha256 "d64ed04135e51aa009e51d8bf01e8269cf040e30bafbf61d13c71948d6e70527"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.39/fwdctl_v0.5.39_linux_amd64.tar.gz"
      sha256 "b26087818ce745747e5044be12a171c6a1543474eb0bbd8a59f903d862b806fc"
    end
  end

  def install
    bin.install "fwdctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fwdctl --version")
  end
end
