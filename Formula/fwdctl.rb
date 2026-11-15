class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.319"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.319/fwdctl_v0.5.319_darwin_arm64.tar.gz"
      sha256 "1b55cee3a9b42343b135186acabbde697a3cbb2b00bcab6904f290233e697073"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.319/fwdctl_v0.5.319_darwin_amd64.tar.gz"
      sha256 "cdf1e472cbd44246069470ba50058c42833e0cb8a76d61a37b04aaa57b80b017"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.319/fwdctl_v0.5.319_linux_amd64.tar.gz"
      sha256 "13b58d9e3addb7f0f86278aad28ea4ed6bec37e91f8d0efb2038a3de9fca65c7"
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
