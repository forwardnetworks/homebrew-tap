class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.336"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.336/fwdctl_v0.5.336_darwin_arm64.tar.gz"
      sha256 "1da7e50fffaf7e3d8ddc7558a6ac5d96cfa85cca580ccea79fea7aed60186042"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.336/fwdctl_v0.5.336_darwin_amd64.tar.gz"
      sha256 "88bcc49281f183e5f56aab568a4cb077d38862de93a8397921aa84b590ee9573"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.336/fwdctl_v0.5.336_linux_amd64.tar.gz"
      sha256 "43cb506db5b08c4ec8df62150e3140cefe521cd79132d59d260ee89b24dc61d8"
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
