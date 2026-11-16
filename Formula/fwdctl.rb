class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.331"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.331/fwdctl_v0.5.331_darwin_arm64.tar.gz"
      sha256 "23758400d8a8c6d3d786ca8a24702f786ccbabe4ddc376276623964441a6c572"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.331/fwdctl_v0.5.331_darwin_amd64.tar.gz"
      sha256 "6320c709425fce78c4997056eefec9d7f9dee7075a0b2ecc94009a2ef4344069"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.331/fwdctl_v0.5.331_linux_amd64.tar.gz"
      sha256 "27d19b1e42493c6a5c66586ac112915fa10174606757e72ceda431356eb35c54"
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
