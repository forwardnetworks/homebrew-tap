class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.232"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.232/fwdctl_v0.5.232_darwin_arm64.tar.gz"
      sha256 "26ed7c0f35e06ef5710640f416fa57a1d039bab510fb9be94349ce6f082b00e1"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.232/fwdctl_v0.5.232_darwin_amd64.tar.gz"
      sha256 "b47b3554e085fb74e48df13e20d61b13beb956147fd20ca0a325ff9f9e5308c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.232/fwdctl_v0.5.232_linux_amd64.tar.gz"
      sha256 "a0afd9d4d7c5870db6c2d193d86e29afe3f650672f7ed4d7af41262e899f5d86"
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
