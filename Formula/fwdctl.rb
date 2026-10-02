class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.60"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.60/fwdctl_v0.5.60_darwin_arm64.tar.gz"
      sha256 "06c8b0dc98da810fc69fad4cc43ea993defd481b79821429fbb6a18648c6acf9"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.60/fwdctl_v0.5.60_darwin_amd64.tar.gz"
      sha256 "9a6559fd7a09178d2418d292aac4d30d94df31e4af4a1b98ca212522be1c2c95"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.60/fwdctl_v0.5.60_linux_amd64.tar.gz"
      sha256 "24b4973f2c3a0e952937fa817c1076b109cb668674077f18895dda61ba63f8d4"
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
