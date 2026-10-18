class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.162"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.162/fwdctl_v0.5.162_darwin_arm64.tar.gz"
      sha256 "531642cdaa4057299f72d2403b57c59b35956a54d1e3b9a3dd86e442798d5f7f"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.162/fwdctl_v0.5.162_darwin_amd64.tar.gz"
      sha256 "89c736f29fbc45a1ac34af5b2ec4278f7af0432e7ba2c3cdc60674faa9e03937"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.162/fwdctl_v0.5.162_linux_amd64.tar.gz"
      sha256 "a54903ad29a1ce089a5ea6f14b11c96fb50e5094e7b8d0099c54da5b6f381592"
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
