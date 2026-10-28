class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.251"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.251/fwdctl_v0.5.251_darwin_arm64.tar.gz"
      sha256 "6274f96eb5c8879c684ed240b9540ecf925b02f26bcbf13ce31e760dd67e0d2a"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.251/fwdctl_v0.5.251_darwin_amd64.tar.gz"
      sha256 "9919d46daa368754004d1e3cf6f51cc2ecf03cb2ee2eac8bf5cb7a296abec402"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.251/fwdctl_v0.5.251_linux_amd64.tar.gz"
      sha256 "e2349a19e473f98857591549e81a6a8023571e46f735a82f714abbae4d5936b7"
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
