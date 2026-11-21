class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.372"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.372/fwdctl_v0.5.372_darwin_arm64.tar.gz"
      sha256 "f77c1846bc83ec9f857aea3bd0d3eb37bc8b03da23cf92154ae4e070116b17aa"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.372/fwdctl_v0.5.372_darwin_amd64.tar.gz"
      sha256 "75f3415fc7f55c9130a696f260d0f10bce6dec22387532d6b62751a5ab1fb06c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.372/fwdctl_v0.5.372_linux_amd64.tar.gz"
      sha256 "cc290c5913c5bac4b1b5ff8be12d1e9c08fa8fae14e9efd5b9e00ac0be66562d"
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
