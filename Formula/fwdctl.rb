class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.252"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.252/fwdctl_v0.5.252_darwin_arm64.tar.gz"
      sha256 "bc2be36ad54ce3ed51437d172d92c6b89ec21792b6a5e05750ee58feabf1372a"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.252/fwdctl_v0.5.252_darwin_amd64.tar.gz"
      sha256 "100076d21c5258249209bba7ee61b6cb05abe24a5533f6da6c81293ad7815d29"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.252/fwdctl_v0.5.252_linux_amd64.tar.gz"
      sha256 "91ef835746fb8c60f6e715a4cf807694ae3f71a8afe49269c080c61ef7cad99a"
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
