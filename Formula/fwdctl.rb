class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.139"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.139/fwdctl_v0.5.139_darwin_arm64.tar.gz"
      sha256 "0c21b1d22b51042015cc09942f987391d15c6614c1962d56d49405f6230d1fa6"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.139/fwdctl_v0.5.139_darwin_amd64.tar.gz"
      sha256 "26593dfd3383476ab929ed541dda2da4872459665b8e247012a481ed51413bdd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.139/fwdctl_v0.5.139_linux_amd64.tar.gz"
      sha256 "323dda463589953877f4f2a96d4c1c0e58cbb4fb70390b7e57e6b72c55435cd1"
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
