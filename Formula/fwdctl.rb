class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.312"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.312/fwdctl_v0.5.312_darwin_arm64.tar.gz"
      sha256 "6975a686e716397dea34846307f75b42777c8b8f1ca738420772c60655f1af31"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.312/fwdctl_v0.5.312_darwin_amd64.tar.gz"
      sha256 "6da8a6a7c40d461313bb8e6d415a4c48ed3a1bddb51f45a0e3a9087cf514d291"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.312/fwdctl_v0.5.312_linux_amd64.tar.gz"
      sha256 "8d51e3beba27f035bec8f22dabd72ff2e94e5a33ec19b89953fe7ad1a2a5335f"
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
