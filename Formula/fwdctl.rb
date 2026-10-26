class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.216"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.216/fwdctl_v0.5.216_darwin_arm64.tar.gz"
      sha256 "b229c09fc20fc66ab41bf36a3e145907dfea6c9e3c67872b797a42223070976a"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.216/fwdctl_v0.5.216_darwin_amd64.tar.gz"
      sha256 "8aec5711c4b9935a203c09bf7dd69e890a751c693ff51a398ae02bbc8de2795e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.216/fwdctl_v0.5.216_linux_amd64.tar.gz"
      sha256 "524a8d46916eeff4e250c1dfbef7f5df960de7b6a1b4a9ec924ecb657d167cd9"
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
