class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.222"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.222/fwdctl_v0.5.222_darwin_arm64.tar.gz"
      sha256 "c0df77776e53db29df1329adb97ab25fcc3b5294a5222cfbc025bc96d4131187"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.222/fwdctl_v0.5.222_darwin_amd64.tar.gz"
      sha256 "423f3cd0603ff83e9807e33cd4e9a355d14d10489fe0d793d5edf0de997e2938"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.222/fwdctl_v0.5.222_linux_amd64.tar.gz"
      sha256 "8eca80764e542034f00d7246427ac1fcfb5d5b6c90de405d1eae8f7dbb1576bd"
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
