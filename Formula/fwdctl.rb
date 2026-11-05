class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.286"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.286/fwdctl_v0.5.286_darwin_arm64.tar.gz"
      sha256 "3d344592014eeddf436ba1a4c36accbf0b3b25e4445641de35e2338c88064613"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.286/fwdctl_v0.5.286_darwin_amd64.tar.gz"
      sha256 "c985b65ab79771c835c7d7b14e7e83fccb6ce6c642386fdea8e8bd1018a93f88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.286/fwdctl_v0.5.286_linux_amd64.tar.gz"
      sha256 "db287026edf579f704ffcf6631898fa2084aeb50b957d692f04d8b03100f0bef"
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
