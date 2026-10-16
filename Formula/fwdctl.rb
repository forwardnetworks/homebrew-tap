class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.134"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.134/fwdctl_v0.5.134_darwin_arm64.tar.gz"
      sha256 "4a5b2770503639d642380abbad8fe706c39164a1b3bfa4d40aa4da415c95a5ff"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.134/fwdctl_v0.5.134_darwin_amd64.tar.gz"
      sha256 "217626f0e9197a0ea169d8972551643058e2a2a256003d6b49a9d62352fc7416"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.134/fwdctl_v0.5.134_linux_amd64.tar.gz"
      sha256 "4c95cd679497ce4bef2f6acc9687e32566f566fe97cfb84ffcbf70a8969e1ca3"
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
