class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.303"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.303/fwdctl_v0.5.303_darwin_arm64.tar.gz"
      sha256 "ffdaddb531cf6962d7c2e453ab03b6fe172aba6855a511639c7bd7e8107bbe42"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.303/fwdctl_v0.5.303_darwin_amd64.tar.gz"
      sha256 "b4425dee2b00f78dd418d470043be1dbbe5afdd30b36c3471cf9a1bef125018d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.303/fwdctl_v0.5.303_linux_amd64.tar.gz"
      sha256 "94db7945079c3d5707b3aa6496b153018d6136924b459d45e1cd5304a7e2007b"
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
