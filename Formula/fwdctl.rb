class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.327"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.327/fwdctl_v0.5.327_darwin_arm64.tar.gz"
      sha256 "28ff3e45d2b02af12fed61e03231ffead00c88e6684a72bcd4c245da017a656c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.327/fwdctl_v0.5.327_darwin_amd64.tar.gz"
      sha256 "0642ae4456932e7240db3236124c2de5202efe49aed422454871ff011486ddc3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.327/fwdctl_v0.5.327_linux_amd64.tar.gz"
      sha256 "b563ce2b989694159535947a8274cc2344f6f4f1cc2b2e8da2640916cbb93c97"
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
