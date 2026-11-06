class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.292"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.292/fwdctl_v0.5.292_darwin_arm64.tar.gz"
      sha256 "6e8db9a0989c3175a1783674793dda282dcc81ee33a818bc904fad43494c5b22"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.292/fwdctl_v0.5.292_darwin_amd64.tar.gz"
      sha256 "254138a4614660255a94ce2166fcbb98adc4997a1ada956f3b0b9bf7174d531f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.292/fwdctl_v0.5.292_linux_amd64.tar.gz"
      sha256 "6234d245e7070b328e4c82fee790dcaeeefa54ce448b3674bdacb8427f2ba428"
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
