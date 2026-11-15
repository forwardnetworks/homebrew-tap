class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.326"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.326/fwdctl_v0.5.326_darwin_arm64.tar.gz"
      sha256 "5f4446af4c5726ed5ff465ee9687387bebbd79f12f1b9605e4206b5daa0dbb4d"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.326/fwdctl_v0.5.326_darwin_amd64.tar.gz"
      sha256 "0e064c57ce4720f32bee08673aa272cf323a78ed0a09c6086ceb0fefd374c1f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.326/fwdctl_v0.5.326_linux_amd64.tar.gz"
      sha256 "8fd24aa0588e6221e3d3473ebceef3c2f75dd3b99449b7ef1a645e994c0b1276"
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
