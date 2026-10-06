class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.88"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.88/fwdctl_v0.5.88_darwin_arm64.tar.gz"
      sha256 "090d883d858f09ddeb8222e9fe755b84216f69d63fd00b2222b9df9f53f491e0"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.88/fwdctl_v0.5.88_darwin_amd64.tar.gz"
      sha256 "ecfc588bf059445d66d97d9159d65dc3631bad754f7398f352deb7af9579d58c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.88/fwdctl_v0.5.88_linux_amd64.tar.gz"
      sha256 "4036f5b497381eed0c1ec5539cb1a132fd4676fd7468e1830043b41ec4a06861"
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
