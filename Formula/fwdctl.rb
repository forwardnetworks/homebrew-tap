class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.189"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.189/fwdctl_v0.5.189_darwin_arm64.tar.gz"
      sha256 "f5eadf858c64e83809a456a9c7a92219a5ebaa77ad048750eac0228470e68aa8"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.189/fwdctl_v0.5.189_darwin_amd64.tar.gz"
      sha256 "d39d4e95d4be87f1cf47bb9b83bd65380da2d6b30c64c3ae79ed6f98031ecaf4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.189/fwdctl_v0.5.189_linux_amd64.tar.gz"
      sha256 "a392f52cd49e04109989276c943a7a16a73391c5d5627996c68cb0bd8534fcc8"
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
