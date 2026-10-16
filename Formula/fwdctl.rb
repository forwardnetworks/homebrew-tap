class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.120"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.120/fwdctl_v0.5.120_darwin_arm64.tar.gz"
      sha256 "4d988450bce237f75c25b8a9deb9364757427efaff82346bd132853b563aaef1"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.120/fwdctl_v0.5.120_darwin_amd64.tar.gz"
      sha256 "7fb8098f13c6c03b99da57c3daa47192e64ca4b5a24b69476d84c211317cc549"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.120/fwdctl_v0.5.120_linux_amd64.tar.gz"
      sha256 "350bd599cf772dabb0bff2f261b32de4220b3632526cfdbb20387e1866ef4a73"
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
