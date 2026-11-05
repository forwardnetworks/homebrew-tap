class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.284"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.284/fwdctl_v0.5.284_darwin_arm64.tar.gz"
      sha256 "71c67fc4293b529673374713127310beb3f1a4d0ffa453e49536cbb798391dc7"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.284/fwdctl_v0.5.284_darwin_amd64.tar.gz"
      sha256 "1d89d54447d9070fbcff18af9a975206d40b5c4e78aeb95d3b1119c5669df21b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.284/fwdctl_v0.5.284_linux_amd64.tar.gz"
      sha256 "530c0125441a6463e0de2c1d44b49aa408f2a048ef7ffba203cd209300032cbd"
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
