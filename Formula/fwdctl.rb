class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.270"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.270/fwdctl_v0.5.270_darwin_arm64.tar.gz"
      sha256 "879327f1fa19cbf047c3f375c72360fb1581193e94ff253b54706d3ac44c338d"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.270/fwdctl_v0.5.270_darwin_amd64.tar.gz"
      sha256 "b86592e0baa760e1608e98e098cf93e2b63558ca685cc275124728d3be4a278c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.270/fwdctl_v0.5.270_linux_amd64.tar.gz"
      sha256 "dda7e6183d0173de9a935d4d8bd04eb7cc15a5ef328763a55db33ab98982e284"
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
