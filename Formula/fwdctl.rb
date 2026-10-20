class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.169"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.169/fwdctl_v0.5.169_darwin_arm64.tar.gz"
      sha256 "c130fc5300cd2541e44852646b3a65cdcf80f585b365e90a9f619e5bdb4692a7"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.169/fwdctl_v0.5.169_darwin_amd64.tar.gz"
      sha256 "6c9bf590ce19f17f8e672792936a3fce8e1854ecf98728a83196ab3a079bba6e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.169/fwdctl_v0.5.169_linux_amd64.tar.gz"
      sha256 "21dbe7ba349319e85e02a06d3b488666257885a9f9d10bdcdfe26d04f6c1f481"
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
