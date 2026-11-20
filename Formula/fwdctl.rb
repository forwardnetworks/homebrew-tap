class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.364"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.364/fwdctl_v0.5.364_darwin_arm64.tar.gz"
      sha256 "95b5ba311ef55ac356edc5f385af64b699c6988b371552f5f88a9a4c839e5892"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.364/fwdctl_v0.5.364_darwin_amd64.tar.gz"
      sha256 "8e09c252f3b9a6d0c6bbee2d62187409708c3add078bdada1844560d54ed81e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.364/fwdctl_v0.5.364_linux_amd64.tar.gz"
      sha256 "3732526a54355de2475e046c6a4a506a07e389147fdd7ac3eeed9ba1cc8fa6aa"
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
