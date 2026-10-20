class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.165"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.165/fwdctl_v0.5.165_darwin_arm64.tar.gz"
      sha256 "b6281cc9ac268decdf090cc11f119802982cb965e1d148f500d8dd4f4fc6da6e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.165/fwdctl_v0.5.165_darwin_amd64.tar.gz"
      sha256 "50459098950fb6f6497fe19928ab3d90d2c4b87ee9e009306114bcb74ca1907d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.165/fwdctl_v0.5.165_linux_amd64.tar.gz"
      sha256 "17c426c6313d16ae752fc4160b0a72bd17cec4bfdd241810dddcd2fc242ba0c0"
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
