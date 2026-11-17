class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.332"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.332/fwdctl_v0.5.332_darwin_arm64.tar.gz"
      sha256 "8ae98baffb49b9e96caaac9dfe36e7074e8ed6b9655d4c1bfdde47cffe857e47"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.332/fwdctl_v0.5.332_darwin_amd64.tar.gz"
      sha256 "ac71617651ae04b8ad22a44b1761f98a0b0ca819d3a5f4e72d48d5fe3cb47447"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.332/fwdctl_v0.5.332_linux_amd64.tar.gz"
      sha256 "b0cdbf08a348fa228392b7e82a1a6fdbce4e4d39253f1fa68b30a6fa7afda492"
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
