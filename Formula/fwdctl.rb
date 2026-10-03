class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.64"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.64/fwdctl_v0.5.64_darwin_arm64.tar.gz"
      sha256 "d4c6efd6622569491b096d33c446acf7bd50104dfa8a721d42b86974f088dcf6"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.64/fwdctl_v0.5.64_darwin_amd64.tar.gz"
      sha256 "41c9a6d5b9352a53089626ab374cdc80c83f799cb68513e32b1490f53b49b471"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.64/fwdctl_v0.5.64_linux_amd64.tar.gz"
      sha256 "a4efc1bf0cb7cdb3f80199c7271aa9c7e702959c2ff5fd9de95fbb550f96bce1"
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
