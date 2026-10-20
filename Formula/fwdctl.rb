class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.170"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.170/fwdctl_v0.5.170_darwin_arm64.tar.gz"
      sha256 "e7e0db004c01966dcb5602462582eaa66b0523da42339f22e17d6c133c9ccb10"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.170/fwdctl_v0.5.170_darwin_amd64.tar.gz"
      sha256 "c12904c1bef949bf62faed2229a59c567a6c1e3368a62a870b665892a88de4b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.170/fwdctl_v0.5.170_linux_amd64.tar.gz"
      sha256 "9196607091e97ecb351926581a6831c24549b88521261018017141283ed37510"
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
