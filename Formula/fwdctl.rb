class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.213"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.213/fwdctl_v0.5.213_darwin_arm64.tar.gz"
      sha256 "66d0803c151790e9283c6929f381973531b51af960f1890a53aeb63e0b34af21"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.213/fwdctl_v0.5.213_darwin_amd64.tar.gz"
      sha256 "80f53a4c92cd8fefd61c40a8ae2dd5ed4f22a18f395900b53c1c7431c6694d09"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.213/fwdctl_v0.5.213_linux_amd64.tar.gz"
      sha256 "f02cb85337269081fd7eea046652c59e99a698c1040fcc49f20f4bb8bd121489"
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
