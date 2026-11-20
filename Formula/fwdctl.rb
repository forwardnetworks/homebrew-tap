class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.368"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.368/fwdctl_v0.5.368_darwin_arm64.tar.gz"
      sha256 "d00fa177054bf8484127fd3048db7b318ac1592cd88812e2fa1afd5c543ae33e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.368/fwdctl_v0.5.368_darwin_amd64.tar.gz"
      sha256 "44252070237f225eeaf3b2e0b50b86e934d17c0fe45cec993249fce05d775c29"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.368/fwdctl_v0.5.368_linux_amd64.tar.gz"
      sha256 "79148c4ca083994d82238b0424be8c73b3b53d3b71976a183cbbc9f5dac8fc77"
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
