class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.184"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.184/fwdctl_v0.5.184_darwin_arm64.tar.gz"
      sha256 "329b7e0900886424bf6f00bf616e5ff0208e8061cf963348c74fb30e1cc417f5"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.184/fwdctl_v0.5.184_darwin_amd64.tar.gz"
      sha256 "7f8e8ade852779b65a09a18b62a606427cd9dae8c9d026f83542a10dcb0efc52"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.184/fwdctl_v0.5.184_linux_amd64.tar.gz"
      sha256 "d57ec21c6358e19786cc227c4f7d4faf87d1653d11b26a78f10532d2d683ebf1"
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
