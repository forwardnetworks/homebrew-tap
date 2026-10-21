class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.190"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.190/fwdctl_v0.5.190_darwin_arm64.tar.gz"
      sha256 "bf38a9bf646389834bec471df63a6b0ece366f8ff293b1dcb7251c5eaafca0ab"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.190/fwdctl_v0.5.190_darwin_amd64.tar.gz"
      sha256 "d305e08f22fe0a9a6ef70bc24d91c19017618cd122670e31b986f7ab397fe8ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.190/fwdctl_v0.5.190_linux_amd64.tar.gz"
      sha256 "2bfcc4477e6ec21fc7de323feca8c6337945138f9761e036f915307a994239e4"
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
