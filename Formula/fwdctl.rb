class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.73"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.73/fwdctl_v0.5.73_darwin_arm64.tar.gz"
      sha256 "8bbc06e191e710e50bed4099861e34c5a8a6d75bcc06ee3279cb1422baa74801"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.73/fwdctl_v0.5.73_darwin_amd64.tar.gz"
      sha256 "ccf77f38a6dcfcce525d04f5979a95ac27f7321cab2277c243faafb21f5e90d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.73/fwdctl_v0.5.73_linux_amd64.tar.gz"
      sha256 "108b5781c1ed44d51bc53d156f1dbd4d7e80c475d050789885d761171faea431"
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
