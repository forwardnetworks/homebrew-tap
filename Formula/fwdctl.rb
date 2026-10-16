class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.141"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.141/fwdctl_v0.5.141_darwin_arm64.tar.gz"
      sha256 "c1131976b22808f6bfc4a2dddac6d49ee5af3ccc46c7f7f1b7723db25b3408d9"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.141/fwdctl_v0.5.141_darwin_amd64.tar.gz"
      sha256 "a7bbeee8e806cc59a68307468d5ef17cb53762c46ec2805667712aae37242264"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.141/fwdctl_v0.5.141_linux_amd64.tar.gz"
      sha256 "3bbb16c3752f933f2f1eece6c39dd7d02940e3c604a0faca5a15687b916ce46a"
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
