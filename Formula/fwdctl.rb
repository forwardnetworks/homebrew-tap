class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.48"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.48/fwdctl_v0.5.48_darwin_arm64.tar.gz"
      sha256 "b034ba5ee411c2429be165b50db418446203b4e69df7e1b4b19499bc45f15a7e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.48/fwdctl_v0.5.48_darwin_amd64.tar.gz"
      sha256 "f6059b7f2bf692c84a5096f3a69f3dc8dbd240d8f27d62b494aa41de5231d016"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.48/fwdctl_v0.5.48_linux_amd64.tar.gz"
      sha256 "e5b6ab816b421727e5f5e8293f4ad0dab4c529a902cf318c7d6068715c109f53"
    end
  end

  def install
    bin.install "fwdctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fwdctl --version")
  end
end
