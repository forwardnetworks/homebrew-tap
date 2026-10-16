class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.128"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.128/fwdctl_v0.5.128_darwin_arm64.tar.gz"
      sha256 "f65c442e58e435d8ccf83aff086b6083e43f287439673ea56f2aca4ace551ed1"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.128/fwdctl_v0.5.128_darwin_amd64.tar.gz"
      sha256 "646e31ef55ec26a52024bccb3b8a1f2ac18c7b5a372c90599c2bd85464ef8896"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.128/fwdctl_v0.5.128_linux_amd64.tar.gz"
      sha256 "afeec78048b1e06b83f6c145be1ccb3aa05c32c234ea79aefe76354a87ac0531"
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
