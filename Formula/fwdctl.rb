class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.287"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.287/fwdctl_v0.5.287_darwin_arm64.tar.gz"
      sha256 "2f49687500ce6140dbfceecb7b720950f0c3c08e75e994aedd490ec0fbfa929c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.287/fwdctl_v0.5.287_darwin_amd64.tar.gz"
      sha256 "1114a568395f8deec24959f8ffbe05947618622f5a6b85a8a81f873c7eb23698"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.287/fwdctl_v0.5.287_linux_amd64.tar.gz"
      sha256 "4082c308813e866976428e0d8e3d68664f60e3b293b4ac9f94af3cd5c226001a"
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
