class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.227"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.227/fwdctl_v0.5.227_darwin_arm64.tar.gz"
      sha256 "f74fb95a9f6b5c4f471f771c439be7d8a851a00348f32c22d7a5d97dcaa5a09d"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.227/fwdctl_v0.5.227_darwin_amd64.tar.gz"
      sha256 "3296bb55acb56b3fb9e320040805f77c608854595463602469befdfe80919e30"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.227/fwdctl_v0.5.227_linux_amd64.tar.gz"
      sha256 "96624e4f13837b36ab79fcd83d0028f10565926b81d54283362847b91d77ed5a"
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
