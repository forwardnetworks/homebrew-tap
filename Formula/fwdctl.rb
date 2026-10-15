class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.109"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.109/fwdctl_v0.5.109_darwin_arm64.tar.gz"
      sha256 "694f3ccb9064acb18d8e0b385a59cb84e82515c75b6d261711db0961a0e129e8"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.109/fwdctl_v0.5.109_darwin_amd64.tar.gz"
      sha256 "c6eafce28fcb1414b92827208a101235d5cb91fd740859ff917e0b9d0cbfb6a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.109/fwdctl_v0.5.109_linux_amd64.tar.gz"
      sha256 "d011f9257a118b00b8e16d00af185aa77ecade221e6cf217263199d9229f2b7b"
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
