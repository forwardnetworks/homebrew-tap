class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.301"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.301/fwdctl_v0.5.301_darwin_arm64.tar.gz"
      sha256 "b452440d4552f8c75b53469a7087aea971c47c6aadcfa5a4ea5bb95e64b5c920"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.301/fwdctl_v0.5.301_darwin_amd64.tar.gz"
      sha256 "b79a85efed65408f688c62387bcfe0480da4106112fb04a919d12eae041b7320"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.301/fwdctl_v0.5.301_linux_amd64.tar.gz"
      sha256 "a3ad20e884e372e87f24487375b615e4dfb079bdf39b670e65cb58e5fed70f9d"
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
