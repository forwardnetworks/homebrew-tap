class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.119"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.119/fwdctl_v0.5.119_darwin_arm64.tar.gz"
      sha256 "0c33b8c52a62f56deeafb045867cd70d9f10b547cb720671844e9e7a75fbd76b"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.119/fwdctl_v0.5.119_darwin_amd64.tar.gz"
      sha256 "20ce8ae898a55a101f8e074c581db217ae079989bc8f80f878874b4d1782d7e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.119/fwdctl_v0.5.119_linux_amd64.tar.gz"
      sha256 "79864776727e32a44e900dd4acd0d5509bcab397c25c471d62423303041326a6"
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
