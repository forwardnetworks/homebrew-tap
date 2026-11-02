class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.271"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.271/fwdctl_v0.5.271_darwin_arm64.tar.gz"
      sha256 "f4c7719366081f53c68296c9d5656dfb4d1c9114258a80c75c6d7089097b231a"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.271/fwdctl_v0.5.271_darwin_amd64.tar.gz"
      sha256 "0cbd4f5b8e8c7a6e7ef5d867252a9d7cc6c62d256ade041cff2dcff9ee3735e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.271/fwdctl_v0.5.271_linux_amd64.tar.gz"
      sha256 "9522d68c10ed0e68a04ed516c55992d3f83b2327f73d9b13f8319cf20b65964c"
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
