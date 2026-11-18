class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.337"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.337/fwdctl_v0.5.337_darwin_arm64.tar.gz"
      sha256 "67a474466c219de29fde62b9d2fe2bb7e65a5a39ab03ba3fe9b996ef7187c218"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.337/fwdctl_v0.5.337_darwin_amd64.tar.gz"
      sha256 "0a37505609773ee5dde2de3bae1898f0de3816a2ec803730e397178b18f414a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.337/fwdctl_v0.5.337_linux_amd64.tar.gz"
      sha256 "b9ed73e6ff4c2f78a840bcc99651f65f038abf268edda300165412622c9daf46"
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
