class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.95"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.95/fwdctl_v0.5.95_darwin_arm64.tar.gz"
      sha256 "6c716366e0b66062a8d11f8828a83dfc3e3f026f395f452055ce48b9cb5ad04e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.95/fwdctl_v0.5.95_darwin_amd64.tar.gz"
      sha256 "f10ad6bd081410a76a8a5e89fa0df23f7063522e1919c7f87dd87f024b2940ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.95/fwdctl_v0.5.95_linux_amd64.tar.gz"
      sha256 "3751e50955696a7784136a2e6baeb54a372f2b113f24e7e112881269e00c89ba"
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
