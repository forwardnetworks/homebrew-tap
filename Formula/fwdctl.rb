class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.142"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.142/fwdctl_v0.5.142_darwin_arm64.tar.gz"
      sha256 "7e5125d4981b0c4595a696381166a2cf86ccb601f2fa2be28402298e4289248a"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.142/fwdctl_v0.5.142_darwin_amd64.tar.gz"
      sha256 "721922ce986b9c3eede0b207621af1313a91a3859ab2e240686e6a1dcf3b626d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.142/fwdctl_v0.5.142_linux_amd64.tar.gz"
      sha256 "57ced4e20d55ef6f4aca8d8afc93a60af10ae9be15a49d78ccca590d517ac3f2"
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
