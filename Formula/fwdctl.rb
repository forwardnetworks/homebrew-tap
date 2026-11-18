class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.358"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.358/fwdctl_v0.5.358_darwin_arm64.tar.gz"
      sha256 "e2c3bcd1e7baaca4be28c9823e6a27ff83d448c855e5dac5efa751b179c3a347"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.358/fwdctl_v0.5.358_darwin_amd64.tar.gz"
      sha256 "a9c1d90adac44e2b5825cc61d35e2f8086c4d51dd99a708d26efb8ee3313ca9f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.358/fwdctl_v0.5.358_linux_amd64.tar.gz"
      sha256 "999f123f93941b7cf998929113abb95ad77b2de40cec81cc4dcef220a0b97bfa"
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
