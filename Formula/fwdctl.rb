class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.263"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.263/fwdctl_v0.5.263_darwin_arm64.tar.gz"
      sha256 "eb6c03635e0fbc688a7bf1b17e6ebc948220c9c8c73f01f357e53317e29c3f9b"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.263/fwdctl_v0.5.263_darwin_amd64.tar.gz"
      sha256 "dc45f686b7c9259052329849ba42812358060d3a3df0daf8a7fb48d55954076b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.263/fwdctl_v0.5.263_linux_amd64.tar.gz"
      sha256 "d296adbfba2180e5ef9e13c5c1dc787dccd7e88ac01e29f2f5792ab43756d9df"
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
