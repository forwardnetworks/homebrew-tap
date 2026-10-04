class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.76"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.76/fwdctl_v0.5.76_darwin_arm64.tar.gz"
      sha256 "d1a93b19fafbb8c7b064df39a983a9775694a5b01e5d0d0cc8958c618db173ef"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.76/fwdctl_v0.5.76_darwin_amd64.tar.gz"
      sha256 "6e53484fb74acb667ccbce4fa91459cda0153056b0daeea268e6e110c21401cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.76/fwdctl_v0.5.76_linux_amd64.tar.gz"
      sha256 "0bef03af2e3e510b81dc79c87ae652b7aec5c01337b97518a4bff67fac67f15d"
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
