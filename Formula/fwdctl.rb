class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.334"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.334/fwdctl_v0.5.334_darwin_arm64.tar.gz"
      sha256 "3870e448f0d117cc5b87da5ddd2281e3a66f2822554831e4140ff0fa81d0ad29"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.334/fwdctl_v0.5.334_darwin_amd64.tar.gz"
      sha256 "ff21435c5434932f98c51ae6b9441f3b774acacad0dc9c9f87c108601b4b05a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.334/fwdctl_v0.5.334_linux_amd64.tar.gz"
      sha256 "6c01d4d49e1dd6d985f9ca7eef5c4052e06c3e2256090ab4761385239aa121b6"
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
