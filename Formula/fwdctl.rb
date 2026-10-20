class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.168"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.168/fwdctl_v0.5.168_darwin_arm64.tar.gz"
      sha256 "3418a3676667cd7c234932e38d5bab77be4103a9762bdb967e76e99588a01a05"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.168/fwdctl_v0.5.168_darwin_amd64.tar.gz"
      sha256 "267f76d74bce1d419e4e51e65fe5f1c605ff56c73bbee97f075b988dd162e210"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.168/fwdctl_v0.5.168_linux_amd64.tar.gz"
      sha256 "df4a30d8ac042e2fe5245d4feeedac06d82d913b0c21902ea54499c17a9e9913"
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
