class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.242"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.242/fwdctl_v0.5.242_darwin_arm64.tar.gz"
      sha256 "b9647cfd9a482a4ec797b2c251fe91e6ddbc1d7c2e986a81e6040992f4867687"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.242/fwdctl_v0.5.242_darwin_amd64.tar.gz"
      sha256 "bd5bd86f1b5e120b163465b15328466fb38ac049cc4b8f85eab83ba1185d41f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.242/fwdctl_v0.5.242_linux_amd64.tar.gz"
      sha256 "e200366bc9cfa6bf038f57d2d3cd800e9d87aeb7f07d78eeb45ee1d72dd013a7"
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
