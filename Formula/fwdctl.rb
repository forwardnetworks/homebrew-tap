class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.132"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.132/fwdctl_v0.5.132_darwin_arm64.tar.gz"
      sha256 "7a5687bc4f997476e0c8a89429687cf2377c52922688177bbc045cbb07ee7798"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.132/fwdctl_v0.5.132_darwin_amd64.tar.gz"
      sha256 "fa048f19f75ddb2bc23aa328acb73c7752660712b7bccb5acf2de4cb31a15ad0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.132/fwdctl_v0.5.132_linux_amd64.tar.gz"
      sha256 "61700fcb2bf007e7a619ff0020aa76fadf0dfabeffe4175009500aa208df8110"
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
