class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.74"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.74/fwdctl_v0.5.74_darwin_arm64.tar.gz"
      sha256 "74fac71498b7993fb36f2337a5e47bb21016fe4cc747aa3479ed3441743ded0c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.74/fwdctl_v0.5.74_darwin_amd64.tar.gz"
      sha256 "63c83a5c887e45a75e1f8981742afa73ff533c0d437b0ad51cafa77094b8b8f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.74/fwdctl_v0.5.74_linux_amd64.tar.gz"
      sha256 "c08cb8ecb9b75d5fb45c05aedcf4e264ee0dc9542e30a13b5a064a7ed4cf8ea5"
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
