class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.285"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.285/fwdctl_v0.5.285_darwin_arm64.tar.gz"
      sha256 "336bff9251d69078dfca5e8cb404ef95fc3157907ab30176ec59159db3f5b851"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.285/fwdctl_v0.5.285_darwin_amd64.tar.gz"
      sha256 "83fa10718c8b71ebd7b9efe6e4cdcbc115ba1d5cce11ac2cd6208df128f07215"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.285/fwdctl_v0.5.285_linux_amd64.tar.gz"
      sha256 "c969094ac64dc3d0daf36ce6525c54fe441ab734fbd1a5b88f6892710b08503f"
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
