class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.306"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.306/fwdctl_v0.5.306_darwin_arm64.tar.gz"
      sha256 "13c8872a35cb4c998b73884193253b4807dc590cd5d4df19205d09cd3757a08d"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.306/fwdctl_v0.5.306_darwin_amd64.tar.gz"
      sha256 "0f8b6f05ae62849b86e00780edcc40291a5d924d91548299cd240de51081f5a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.306/fwdctl_v0.5.306_linux_amd64.tar.gz"
      sha256 "bd4a24d68058a89d5dc26d1a440496632634dfdf7cc1f8192bc810c933b85469"
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
