class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.330"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.330/fwdctl_v0.5.330_darwin_arm64.tar.gz"
      sha256 "1f7587165387d18537e191e4631b6ea3472688bb68e0ed2de629d061edb3789d"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.330/fwdctl_v0.5.330_darwin_amd64.tar.gz"
      sha256 "4bf40b5ec1282edd0b13707b70ae60eec24ff512eea5633dcc05f8b4811d7967"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.330/fwdctl_v0.5.330_linux_amd64.tar.gz"
      sha256 "96d3a87a8ecf58088c7933f50b0ff775b34141068eb43dfd0715ce68d9a4bfe9"
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
