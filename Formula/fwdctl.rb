class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.229"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.229/fwdctl_v0.5.229_darwin_arm64.tar.gz"
      sha256 "94b8fc2ee3ecea5dbdd789e4c62dced7b5852f369f81b2465dd4509f7a4304f5"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.229/fwdctl_v0.5.229_darwin_amd64.tar.gz"
      sha256 "935dc406934f5663a4d6e279f43f4dc1860e311d01067faf7e50547ba8dfefcc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.229/fwdctl_v0.5.229_linux_amd64.tar.gz"
      sha256 "2bc8984a9417c60dc9d31a22431b8fa90dd65f909a7966889ffdf9c6f0a14fd1"
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
