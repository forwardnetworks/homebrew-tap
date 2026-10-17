class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.149"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.149/fwdctl_v0.5.149_darwin_arm64.tar.gz"
      sha256 "f0e57c36a893fe83518c11da37ac24fbbb51684671b9eeebce614a3f919e2ace"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.149/fwdctl_v0.5.149_darwin_amd64.tar.gz"
      sha256 "3a35483351013ce0d080e1cfdb0b77183f6eae9864e73b0fe5bc1845af1c6628"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.149/fwdctl_v0.5.149_linux_amd64.tar.gz"
      sha256 "7e8efaa72231a2d0d9660b8ffc3b6ad4c5e788684aa5958f77bb904d206f07c4"
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
