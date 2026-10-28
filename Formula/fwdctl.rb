class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.238"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.238/fwdctl_v0.5.238_darwin_arm64.tar.gz"
      sha256 "a8e646a74d0fdc2e5d5bda36746de56454a74a84242930a87dad085eb6395cf3"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.238/fwdctl_v0.5.238_darwin_amd64.tar.gz"
      sha256 "acf7680e42a44e134ce957c1bab219495807d7a50bab75b84dcd9a78db9487ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.238/fwdctl_v0.5.238_linux_amd64.tar.gz"
      sha256 "d010fbe3ae09e4c4e899d40aa290eb511e1fbc00fa27c366ea750b2b5eee6641"
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
