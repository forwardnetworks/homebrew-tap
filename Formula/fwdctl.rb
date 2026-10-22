class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.191"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.191/fwdctl_v0.5.191_darwin_arm64.tar.gz"
      sha256 "80816a7b91e68faf1a34dcedb08d1e61e6fef7e5c7f5b0991603d32b7058ad04"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.191/fwdctl_v0.5.191_darwin_amd64.tar.gz"
      sha256 "f213eb6481d8aaf1ee801d6e43b7f35827c14afd24252aba92826de9876ca5ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.191/fwdctl_v0.5.191_linux_amd64.tar.gz"
      sha256 "4e8e78f91239df7f5883e7b0d510cd7a3f98a39e5431618b6901923a04fbf198"
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
