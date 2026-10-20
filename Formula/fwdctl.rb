class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.173"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.173/fwdctl_v0.5.173_darwin_arm64.tar.gz"
      sha256 "9a0c7e7df039965d8831acf0a967a1a54001e52657553d5f4bb087890be769ac"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.173/fwdctl_v0.5.173_darwin_amd64.tar.gz"
      sha256 "bac14c70c9a5181a6ebd21c40d16cccf87cf10dfd8d26160e1501e29a2c9ecfd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.173/fwdctl_v0.5.173_linux_amd64.tar.gz"
      sha256 "e31a3d8d17abe732fe9e44fe8c9e9ca9b2bebf3eb0703ca679522765f077efc8"
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
