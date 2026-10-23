class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.200"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.200/fwdctl_v0.5.200_darwin_arm64.tar.gz"
      sha256 "f4e96662a187b64dc6bc5c4d7d6375cb27b0110519004009534e4b23e2eab374"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.200/fwdctl_v0.5.200_darwin_amd64.tar.gz"
      sha256 "b21ae554650c8e0e652ccbfc69320568cb194ce0c70eb3619cbe32b1db6033cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.200/fwdctl_v0.5.200_linux_amd64.tar.gz"
      sha256 "21c19cc8198e31b79e371c257cce0fa9f426f0b59407d42114f7141f2f979eba"
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
