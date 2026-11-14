class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.315"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.315/fwdctl_v0.5.315_darwin_arm64.tar.gz"
      sha256 "b64e1049f39a0b29c2cbedb82eb320f474999912847cca8dd2c463c966b0373d"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.315/fwdctl_v0.5.315_darwin_amd64.tar.gz"
      sha256 "ce3fba3aacddde74db39a4547566f44326bebb26c4d4587738ad7d008abd26c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.315/fwdctl_v0.5.315_linux_amd64.tar.gz"
      sha256 "3c9c92a55db7b5d0f6fba17f3f28b640bbad9dbafb97ff70fd6a5d7772fd5ef1"
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
