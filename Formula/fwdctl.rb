class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.314"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.314/fwdctl_v0.5.314_darwin_arm64.tar.gz"
      sha256 "2c1fdb12be9c816eaeb959ebd89d1fbf4513f6de9d84b53d8aa8808724f9873e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.314/fwdctl_v0.5.314_darwin_amd64.tar.gz"
      sha256 "ea9c811f82cafd32945c2d21bad0f393b392c2e717a6a111274f687581ad7f4f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.314/fwdctl_v0.5.314_linux_amd64.tar.gz"
      sha256 "16103fb505b279da6ff583b1f7b6b1009ec0b323010f39d3ab5c87815e2e2081"
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
