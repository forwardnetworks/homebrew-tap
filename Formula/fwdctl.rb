class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.183"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.183/fwdctl_v0.5.183_darwin_arm64.tar.gz"
      sha256 "fe9a8225e65dee98392843d29fbe7b14ddd2c9aad3a0b439d08031dfd8e0f441"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.183/fwdctl_v0.5.183_darwin_amd64.tar.gz"
      sha256 "746b7c275594e9602ee7d0c8d1511441f811f62b219888926a7c7169c6814a25"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.183/fwdctl_v0.5.183_linux_amd64.tar.gz"
      sha256 "e88a09492f3b6db99d2de279d0610cc83c355a9c03077aaaa1005aaa62a98f05"
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
