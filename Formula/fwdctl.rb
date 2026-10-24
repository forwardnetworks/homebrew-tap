class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.208"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.208/fwdctl_v0.5.208_darwin_arm64.tar.gz"
      sha256 "2e6c17e8d66a1c3327e67dd49d9d0109188a274bd684fb9efc22f807221703fb"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.208/fwdctl_v0.5.208_darwin_amd64.tar.gz"
      sha256 "16e50da44ff77035283d02bc5143da4f63a80bcafe5e8528b6b80f16494f19e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.208/fwdctl_v0.5.208_linux_amd64.tar.gz"
      sha256 "c1a266bb47f826553be112131bd395f3b40123b2f040c0c07c1b9f3230f2ce73"
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
