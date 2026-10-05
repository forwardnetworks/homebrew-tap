class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.85"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.85/fwdctl_v0.5.85_darwin_arm64.tar.gz"
      sha256 "4b6dc21c31e48aa8244473f7f626eb86f8c8993ffd56e9ee8c397ed4fbdb0305"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.85/fwdctl_v0.5.85_darwin_amd64.tar.gz"
      sha256 "a0caadcb8d90f7644379638e670685ac32bf6942fc5ba21393f36fc31b300b16"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.85/fwdctl_v0.5.85_linux_amd64.tar.gz"
      sha256 "8ff2d33a424e43cc2f213ceb6ec927c66d64f04a17f7416fcab06a5464d93571"
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
