class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.276"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.276/fwdctl_v0.5.276_darwin_arm64.tar.gz"
      sha256 "0f6ea39c48eca84346db4b98e0adbc2fa2f858bb96782697b73bdddca5c93fca"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.276/fwdctl_v0.5.276_darwin_amd64.tar.gz"
      sha256 "f11d0c2ffa28d4818edae2031131abcf6e55bff8479db28d0db21b1842982e5b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.276/fwdctl_v0.5.276_linux_amd64.tar.gz"
      sha256 "c8e522337d26c65fc20ccac30fbf27d608af4479bbd4140f170aa3c6d6de5a5e"
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
