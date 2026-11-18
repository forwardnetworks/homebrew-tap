class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.353"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.353/fwdctl_v0.5.353_darwin_arm64.tar.gz"
      sha256 "3a4e0612fa3dfce4da0d48d23b1274f534bd01a7aca9acdabbad29b74770164e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.353/fwdctl_v0.5.353_darwin_amd64.tar.gz"
      sha256 "ec15d4a847365731bac4bbe3ea601466135491580e21a5b3a1f7fbd0470b399c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.353/fwdctl_v0.5.353_linux_amd64.tar.gz"
      sha256 "72a667717802656209feb390d162be67e0481f6081b3786c401e6c64fc394a2c"
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
