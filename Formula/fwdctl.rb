class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.198"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.198/fwdctl_v0.5.198_darwin_arm64.tar.gz"
      sha256 "ea428f45f202620474b5bc3125f1a030da8921747c6340ef91ed67a50db24931"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.198/fwdctl_v0.5.198_darwin_amd64.tar.gz"
      sha256 "6604082d50ed91b636baa3f86b1aee9bf94f0976424cc91d91393d3debe0653b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.198/fwdctl_v0.5.198_linux_amd64.tar.gz"
      sha256 "18f4bc40c80fece5aa4156f0cd8f74e32ad2f6f42e4879b66c1ef310342e5bc1"
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
