class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.274"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.274/fwdctl_v0.5.274_darwin_arm64.tar.gz"
      sha256 "9642ecc4bd17aa54241114f3c07b84b299711233da5c6837f7e1dcbea89ffd65"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.274/fwdctl_v0.5.274_darwin_amd64.tar.gz"
      sha256 "ff19f268fba5bc10811a7bbac0c27894d17575f4cfa5963067856601b6b8c098"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.274/fwdctl_v0.5.274_linux_amd64.tar.gz"
      sha256 "d9cc4bc721c93047404f9e1b4258ebfe533ec5c8dc0ddb065dc6bbb16a5c4aa7"
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
