class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.318"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.318/fwdctl_v0.5.318_darwin_arm64.tar.gz"
      sha256 "d73c9a49d3e2adcdbd26f5d92413ab1d82454711a1efb009310ce10e49d23206"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.318/fwdctl_v0.5.318_darwin_amd64.tar.gz"
      sha256 "8291f9a9eb4e2e8e6bcaaeb20d02206f20bbea19b7e91083aa6b9e39884d2ab9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.318/fwdctl_v0.5.318_linux_amd64.tar.gz"
      sha256 "098feb799ca78c9da3a1a8edb94ae82420ffed8d6675f8aa0b9e31dba70732d5"
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
