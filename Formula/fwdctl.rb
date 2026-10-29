class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.253"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.253/fwdctl_v0.5.253_darwin_arm64.tar.gz"
      sha256 "f8bfa02ac603a2afb210c93fbe8c9f475c5e7d7182592f1a1086f9a84628aa64"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.253/fwdctl_v0.5.253_darwin_amd64.tar.gz"
      sha256 "edd55ebcb299eef02b2a834ec8f43b7c9872bab17e3e8d40f56e01b06df25cb1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.253/fwdctl_v0.5.253_linux_amd64.tar.gz"
      sha256 "084840fe819bc8eafd8a6b47179cd978089d6746d72a72e40d0919e623d41836"
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
