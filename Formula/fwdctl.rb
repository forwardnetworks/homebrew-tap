class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.153"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.153/fwdctl_v0.5.153_darwin_arm64.tar.gz"
      sha256 "49c7dca2f6fad90b1f2413c4c3a140ff8ba829af90f98d3528a30fe1f9063011"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.153/fwdctl_v0.5.153_darwin_amd64.tar.gz"
      sha256 "eeaea7c3f2fea62cb6f542d149236946df55d40c431d5b3a3bc2782a3138fda1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.153/fwdctl_v0.5.153_linux_amd64.tar.gz"
      sha256 "adc65a4c0b6b7cf7a13e299b4bdd4cf12be0cf67bfa93aab3ba9a16c34d7d89b"
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
