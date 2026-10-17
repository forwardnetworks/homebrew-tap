class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.151"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.151/fwdctl_v0.5.151_darwin_arm64.tar.gz"
      sha256 "f3a07525e9386099051d4436eaf75adbf513f16b3c4b50c28ac1360849c97d05"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.151/fwdctl_v0.5.151_darwin_amd64.tar.gz"
      sha256 "3c20707e603a9af0facae2c0372e60bd482af5450001b9fe87e9633a9d2ea1cb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.151/fwdctl_v0.5.151_linux_amd64.tar.gz"
      sha256 "13331163b72fcd4f0af8072fa16836fc71abb0d9e0aa7b7e68383e7130d3a035"
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
