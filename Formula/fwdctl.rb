class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.340"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.340/fwdctl_v0.5.340_darwin_arm64.tar.gz"
      sha256 "ebf0f7c8692ca6d3b3857918c760b3dfafebbaf493edcc5c0d14a177012f0ba6"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.340/fwdctl_v0.5.340_darwin_amd64.tar.gz"
      sha256 "543cf4f4c868fe45d237c27493ed9a387c4c84268c689c07a510f235dde1c71e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.340/fwdctl_v0.5.340_linux_amd64.tar.gz"
      sha256 "0cfc597d3a38c09d401c02499007907142312b3edc2352a7322877df9567124f"
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
