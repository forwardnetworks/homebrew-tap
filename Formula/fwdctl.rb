class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.211"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.211/fwdctl_v0.5.211_darwin_arm64.tar.gz"
      sha256 "1217a96428eb873d9ac5f4633a28e7c25c236a3e5c4ad2f1a635b3f0c856ac31"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.211/fwdctl_v0.5.211_darwin_amd64.tar.gz"
      sha256 "b4a32d4873a4f6540fe5cb0b82a3b25eb472f8c4524941efd261cf5cb48780eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.211/fwdctl_v0.5.211_linux_amd64.tar.gz"
      sha256 "e1d3bbc0d28fc74e7f1d59dd73353322037ebcb09b3fcad20c830ccfa7a29ba4"
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
