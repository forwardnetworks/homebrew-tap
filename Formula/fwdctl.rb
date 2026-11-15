class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.329"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.329/fwdctl_v0.5.329_darwin_arm64.tar.gz"
      sha256 "cddeac9c191a5e5635a1d89b2f4890b54edc82d5d9b5c9b09cdfde0f116d3223"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.329/fwdctl_v0.5.329_darwin_amd64.tar.gz"
      sha256 "6ae00c05e043948e94491b6331f012326ff1e39c5d06d5795318963f7b9f3340"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.329/fwdctl_v0.5.329_linux_amd64.tar.gz"
      sha256 "e19b948a54ea9cfd55bb0076ec35a0b64680d133bba44bd6b1f2145c58eab045"
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
