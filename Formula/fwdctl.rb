class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.65"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.65/fwdctl_v0.5.65_darwin_arm64.tar.gz"
      sha256 "0d11f5518cd25b5eafe4965c583c2f10447ca4dc61156e4892506f2690dbbd5f"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.65/fwdctl_v0.5.65_darwin_amd64.tar.gz"
      sha256 "4d33c24f23dcfd9c109ab0465d725ea515cf7e5136519590f6916965b78c4577"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.65/fwdctl_v0.5.65_linux_amd64.tar.gz"
      sha256 "65325a05508f17462e5efc24c97741a4c887039890b38d514e233373e6488b48"
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
