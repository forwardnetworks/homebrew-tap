class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.167"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.167/fwdctl_v0.5.167_darwin_arm64.tar.gz"
      sha256 "1aed119bd5045810bbd8d99e599b5b149e78e40b16a7d75c25c635ae0464eb7b"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.167/fwdctl_v0.5.167_darwin_amd64.tar.gz"
      sha256 "63c5654cf5461d2d658344db8a9eb0055547def7ccbdbcdd42bb331e3bb89aae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.167/fwdctl_v0.5.167_linux_amd64.tar.gz"
      sha256 "deeb941d079347604c10c9d5c58ab4fc268de4278d47d8a18de30d79de29501c"
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
