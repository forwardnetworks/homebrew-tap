class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.323"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.323/fwdctl_v0.5.323_darwin_arm64.tar.gz"
      sha256 "d0ed87a6616cd39dfe1c8c88cfa1686b34e1782a60adf2e6e1add9c072895dae"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.323/fwdctl_v0.5.323_darwin_amd64.tar.gz"
      sha256 "1f4758634588b87c9bb4f0322d0e329cf55ac7fb6ddc79759b15c5ea711215c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.323/fwdctl_v0.5.323_linux_amd64.tar.gz"
      sha256 "110e0914378df7879f2a335051133d030e1335f081b6cd975d76dc2aa843a4f3"
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
