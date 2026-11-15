class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.321"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.321/fwdctl_v0.5.321_darwin_arm64.tar.gz"
      sha256 "94be2459c7d3b5ce5f58cb7b27e623d003cca25c0864300a296ef0c9e28c5ce2"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.321/fwdctl_v0.5.321_darwin_amd64.tar.gz"
      sha256 "859fe97b2ff8ede15c5c0a8ddef2fced594365daa07cf4ca084a046219c8ef42"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.321/fwdctl_v0.5.321_linux_amd64.tar.gz"
      sha256 "9c55a4a646b0cf499bb5d222c92fefd780e095994d1bfb78fccd7669b824b256"
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
