class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.182"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.182/fwdctl_v0.5.182_darwin_arm64.tar.gz"
      sha256 "3060248ca8e5e9f9e6526eafcb012fdbd940368f17cf35c253c7cd46b740a090"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.182/fwdctl_v0.5.182_darwin_amd64.tar.gz"
      sha256 "013dbd560e919d6912815bb6910ffab0b3527ab1c5d1221ed14bbbccecf82b38"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.182/fwdctl_v0.5.182_linux_amd64.tar.gz"
      sha256 "2fc43674b888a5122822d7ec9ada65866e9c5ddfae12109e6bd4b5f44a63becf"
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
