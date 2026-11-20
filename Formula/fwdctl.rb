class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.366"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.366/fwdctl_v0.5.366_darwin_arm64.tar.gz"
      sha256 "9e1d04e47c429ac5820a6fc9f9e7f7176461ce8c37bee56edc3ebb8a194d1202"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.366/fwdctl_v0.5.366_darwin_amd64.tar.gz"
      sha256 "f2942908f42103a4f21d4f5d5adc4f7af4aec3f3691ff4d41727f28fc83d2ef0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.366/fwdctl_v0.5.366_linux_amd64.tar.gz"
      sha256 "a397cf278f466532a4bd025ffb62390835add1b5e19ffb63e191975c1a511084"
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
