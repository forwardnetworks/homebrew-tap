class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.324"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.324/fwdctl_v0.5.324_darwin_arm64.tar.gz"
      sha256 "a5dd6e4f33ddf01fd4fdf045ce2953116243818f79748013f75b87d35e6b4336"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.324/fwdctl_v0.5.324_darwin_amd64.tar.gz"
      sha256 "ddaa6669a4797b6426ce1040e47ba702a4496221451987c7de7b587de0b8dd4f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.324/fwdctl_v0.5.324_linux_amd64.tar.gz"
      sha256 "ec6dbe739bcd98b7e6828db81fe948fcc9594b1ba3f127319bc14c7d0191b44e"
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
