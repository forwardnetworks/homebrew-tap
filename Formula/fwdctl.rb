class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.156"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.156/fwdctl_v0.5.156_darwin_arm64.tar.gz"
      sha256 "ca61ef002466d1cc9be9dd91dacfb60cbee2ebe99ef0538011fbb42c778ae97b"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.156/fwdctl_v0.5.156_darwin_amd64.tar.gz"
      sha256 "0e4acd426d370e92c998894fa98346573a997e96d10cd052cf515d28568462fa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.156/fwdctl_v0.5.156_linux_amd64.tar.gz"
      sha256 "3dde96aea83e7caf17b604bec4ca6b015d558248eace68f3749c529c9c3fe4a5"
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
