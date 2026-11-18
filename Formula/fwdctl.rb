class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.345"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.345/fwdctl_v0.5.345_darwin_arm64.tar.gz"
      sha256 "4ea3172783991579808be1e57d7a2433ca282efa57a18bfa95f7c9a7d5d75adb"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.345/fwdctl_v0.5.345_darwin_amd64.tar.gz"
      sha256 "00e25fa02aa0d54d53bc1e82b5501f7101884d37d00de59976891957ecdfeaa3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.345/fwdctl_v0.5.345_linux_amd64.tar.gz"
      sha256 "d952d093dd55bc5ee4d478401cc15122950526cc9cfe18cfe396ba4760c6fc01"
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
