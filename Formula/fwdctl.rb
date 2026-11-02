class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.268"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.268/fwdctl_v0.5.268_darwin_arm64.tar.gz"
      sha256 "bb36577f119579afd64522ee0f65deacba534482ada051757f4d9019c204782b"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.268/fwdctl_v0.5.268_darwin_amd64.tar.gz"
      sha256 "403ae253d5e52bda581d6f626fa22ef17bcac84b8c8aff86cfc86a17448f8c56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.268/fwdctl_v0.5.268_linux_amd64.tar.gz"
      sha256 "a23add040054e7456b414ba3de6a2b14145fcc16cfb0275100e9df77676e6011"
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
