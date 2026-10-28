class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.248"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.248/fwdctl_v0.5.248_darwin_arm64.tar.gz"
      sha256 "305cfd47fb46f01c853794e929c8982e9985c35184c2dc80cb8cb6ce996799a2"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.248/fwdctl_v0.5.248_darwin_amd64.tar.gz"
      sha256 "2018e481f187636b14840ba91b44f2a45844967feaaacc23b1acf0b34db5e2f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.248/fwdctl_v0.5.248_linux_amd64.tar.gz"
      sha256 "3b609f46d3c362a6df7a09e857bf7606cdf47ee80c25243e53f4e3babcf8ce80"
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
