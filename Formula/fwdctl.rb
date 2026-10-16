class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.127"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.127/fwdctl_v0.5.127_darwin_arm64.tar.gz"
      sha256 "6525fc15ce391a089e67fc6b59a0f69e27812a8fb793ac6b1968dba82b12c7ae"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.127/fwdctl_v0.5.127_darwin_amd64.tar.gz"
      sha256 "c41ab7c965afa93cc3958ec11655338f5bba487a6f4fba6584445e9a5b54414d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.127/fwdctl_v0.5.127_linux_amd64.tar.gz"
      sha256 "c7bc4984e386be667c6cd85928c35af757837daa000b4feb05664f22115b3366"
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
