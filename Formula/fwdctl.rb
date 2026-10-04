class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.75"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.75/fwdctl_v0.5.75_darwin_arm64.tar.gz"
      sha256 "e3b09ef00fca75608b1a51ca118182250c4613dba2d417a97276433ec36ac3eb"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.75/fwdctl_v0.5.75_darwin_amd64.tar.gz"
      sha256 "e90402a1c7e0055d363863f8c40b664aaa34d8c5a3251921eb7ff0586403ad06"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.75/fwdctl_v0.5.75_linux_amd64.tar.gz"
      sha256 "12897c53b0670a9139141226c4b7eab68bddb9406c4a3c85d6220338a5cd0dc2"
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
