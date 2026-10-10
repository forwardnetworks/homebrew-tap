class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.97"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.97/fwdctl_v0.5.97_darwin_arm64.tar.gz"
      sha256 "590fefe9cde7af00c8df00f71e3b3fdb71c304bfb2a6c3fd6374bfb6e4196a3e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.97/fwdctl_v0.5.97_darwin_amd64.tar.gz"
      sha256 "fa2eb37a26d5eeb34e1ca447c43b2e3f2b3a08dfe83acb95a919bbe69f4a750c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.97/fwdctl_v0.5.97_linux_amd64.tar.gz"
      sha256 "c38f8efb47fcb1a044d58e65b72d059230db166f72983eb41b3f985b75bd9dff"
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
