class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.367"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.367/fwdctl_v0.5.367_darwin_arm64.tar.gz"
      sha256 "ae23eee5cf1a01522881e85ac310d48df7035d0a384fcdd56bec17d13b7d649e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.367/fwdctl_v0.5.367_darwin_amd64.tar.gz"
      sha256 "4b1426dff1fd1ec619ae8d5cc30e226fc272f003d9a1508c9b627adc4e9295cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.367/fwdctl_v0.5.367_linux_amd64.tar.gz"
      sha256 "cc2055abea8ab93136ef406f7fa72efb7cd9e9e4b92d01cd5c441e8810c0f1d5"
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
