class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.348"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.348/fwdctl_v0.5.348_darwin_arm64.tar.gz"
      sha256 "fbe27cede0341bd0e76ca3ae9e4ad62aed1e1d97788f41b22ddbc7805dfaf3cc"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.348/fwdctl_v0.5.348_darwin_amd64.tar.gz"
      sha256 "f93354fd4bf207f73395bf081f93bcda71dd45430a995b0c18030e6cbe921872"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.348/fwdctl_v0.5.348_linux_amd64.tar.gz"
      sha256 "c85764e42cc551eee406bfbbcd5b733cae542b89bc327d3a34d47370eb869d3d"
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
