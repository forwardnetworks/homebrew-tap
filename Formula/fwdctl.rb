class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.84"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.84/fwdctl_v0.5.84_darwin_arm64.tar.gz"
      sha256 "2a3542bb29a996be008f646723c79ba5bd3236105972371de32663046092cf31"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.84/fwdctl_v0.5.84_darwin_amd64.tar.gz"
      sha256 "6b62e904062cf8f327bb15e24e0f76a9130146e320fa248f198e8c865a711dbd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.84/fwdctl_v0.5.84_linux_amd64.tar.gz"
      sha256 "7b71f0796cb7d75b13a9c6657fb6dd8555d6c215126a993752b834c1c2c401c1"
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
