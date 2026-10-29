class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.258"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.258/fwdctl_v0.5.258_darwin_arm64.tar.gz"
      sha256 "bc14a350f91e96d0645d32578bbaf7bc113f6d60c948da0450801b5033ffc6c3"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.258/fwdctl_v0.5.258_darwin_amd64.tar.gz"
      sha256 "90893bce22bce4e8608eeade2e2880884937b1cc04980f7b85f2c9f08a65ae3d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.258/fwdctl_v0.5.258_linux_amd64.tar.gz"
      sha256 "6007f32f7e17e3576bb232f8533e6643daaaf7601ae48fb5178ff7ab1f635a4d"
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
