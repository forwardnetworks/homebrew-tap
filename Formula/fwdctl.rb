class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.214"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.214/fwdctl_v0.5.214_darwin_arm64.tar.gz"
      sha256 "7eb22671477013acc3c6d236c1f2f19225d13d5af108b00c1803098ca42d324c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.214/fwdctl_v0.5.214_darwin_amd64.tar.gz"
      sha256 "237e84a474f33878bf69363aa9ff788e3c52f3b851ddca59b38943c2d2ed88c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.214/fwdctl_v0.5.214_linux_amd64.tar.gz"
      sha256 "2ea90c03effd2d832d10fc3603746b99eb11c2538b1d37607f49c5e617433f13"
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
