class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.237"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.237/fwdctl_v0.5.237_darwin_arm64.tar.gz"
      sha256 "da391c20e438ee3a8992e0523eaaa6be97b80e07d8c10f22f3352629bae595d5"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.237/fwdctl_v0.5.237_darwin_amd64.tar.gz"
      sha256 "2ef1d50d687d24ea14037c3abea82324d904488bbe033211391c3f5c12dd1f13"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.237/fwdctl_v0.5.237_linux_amd64.tar.gz"
      sha256 "badd0c3ef09e4e706655ca3c5e2dd6f19f2cfa5aa1e5a21bd9209bbf63b89259"
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
