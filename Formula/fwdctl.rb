class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.181"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.181/fwdctl_v0.5.181_darwin_arm64.tar.gz"
      sha256 "ff298b751dbee19cc33b4be65599afb561e6406a80250efd9b8110f024c4250c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.181/fwdctl_v0.5.181_darwin_amd64.tar.gz"
      sha256 "90a387ee66223c8b85cf4d2929b38f2466a0ba5fae713315f00848a77b6cc59e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.181/fwdctl_v0.5.181_linux_amd64.tar.gz"
      sha256 "2195f909fed76ddb57a04008bad3f11df17c2775d8c51e73ccf1001ebb0e7fa2"
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
