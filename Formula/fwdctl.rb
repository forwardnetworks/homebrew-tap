class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.223"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.223/fwdctl_v0.5.223_darwin_arm64.tar.gz"
      sha256 "6e9fe213826ace3fc12d5b2d16b37b62281bb293d7cbfeecdde8d9c64c5e5c59"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.223/fwdctl_v0.5.223_darwin_amd64.tar.gz"
      sha256 "eb1699514fbf8b9fd930609aebf61cefd5168bbaa3459fb2882f6b45cbd22de9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.223/fwdctl_v0.5.223_linux_amd64.tar.gz"
      sha256 "6bcb8dcea5d82234545f0c8e90661aaebcec8b3ae52ee27ad4b1ff65e734bbd6"
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
