class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.210"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.210/fwdctl_v0.5.210_darwin_arm64.tar.gz"
      sha256 "7e1541eba616516f7f554f5575b0c9b717f54ec6a3520a4b53a9b0462fe86fc6"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.210/fwdctl_v0.5.210_darwin_amd64.tar.gz"
      sha256 "ce0372f26aa00d85ab0a5e69085a59f281a977e7a84d09b498ad1c268921e38d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.210/fwdctl_v0.5.210_linux_amd64.tar.gz"
      sha256 "64afd528b78be79fede83684197120a221e2faa4a3807debc2886805260e6d03"
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
