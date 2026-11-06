class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.293"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.293/fwdctl_v0.5.293_darwin_arm64.tar.gz"
      sha256 "42d66e8104929a4d4b972545c8f7d6e0104389364e13143a035e7ceffe591c1e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.293/fwdctl_v0.5.293_darwin_amd64.tar.gz"
      sha256 "59212ae04a050dc863dcd4aa8db668e792e11fac6e821fbe4148723ecbe0a09c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.293/fwdctl_v0.5.293_linux_amd64.tar.gz"
      sha256 "03a54dff5a97e924dc8fee9ea967df750e2ab319c66c066f3b6ea270f58d5f40"
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
