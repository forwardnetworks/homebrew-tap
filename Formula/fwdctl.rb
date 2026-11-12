class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.309"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.309/fwdctl_v0.5.309_darwin_arm64.tar.gz"
      sha256 "afce680bf548d4556951c5e65b1fb7c2662d6f757a41d89c2e0a8c14bc2b11dd"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.309/fwdctl_v0.5.309_darwin_amd64.tar.gz"
      sha256 "6bc799786e1fb4d2377a859c53ff686f0b208a17545e3415d18f262d8194b16b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.309/fwdctl_v0.5.309_linux_amd64.tar.gz"
      sha256 "a0c45814e72fd67b2bc8cae5570f44ab417e7bb81a2c1d931914f4f1cd994abb"
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
