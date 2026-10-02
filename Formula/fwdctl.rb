class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.52"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.52/fwdctl_v0.5.52_darwin_arm64.tar.gz"
      sha256 "da71a3e0ff418f714b3d67dd77cf3edf3a06e5d4606b485d094a1166e7f6bc70"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.52/fwdctl_v0.5.52_darwin_amd64.tar.gz"
      sha256 "41c3e5bb4d06096f46e20537c49a33aef96fc6dd05d58649f0b7549ebdef9fc1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.52/fwdctl_v0.5.52_linux_amd64.tar.gz"
      sha256 "a5de6539a56d61b4089c46fd399605c78f62a6626467a4482d3432a55453a025"
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
