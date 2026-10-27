class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.230"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.230/fwdctl_v0.5.230_darwin_arm64.tar.gz"
      sha256 "8225e12c147ccf978cbfec9d6799f26bce31eebdebcc0c5fb5166838077d41a9"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.230/fwdctl_v0.5.230_darwin_amd64.tar.gz"
      sha256 "fc433a7d8aacda14703f2ed07209fe86bb4263b960b0ff8e9e6eb902b3bccb97"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.230/fwdctl_v0.5.230_linux_amd64.tar.gz"
      sha256 "7a73c2dd4ace6e85fc27aa8f034bd636a95be6253227e9757ee2cd2b2de05899"
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
