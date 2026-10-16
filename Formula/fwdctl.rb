class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.124"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.124/fwdctl_v0.5.124_darwin_arm64.tar.gz"
      sha256 "5738dd53b951682de521366a783db04ce05583b2db6763989a15f7509d0ce6c5"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.124/fwdctl_v0.5.124_darwin_amd64.tar.gz"
      sha256 "87dd740b4f09365aae4469b12ada93883f216ac0ccd22ab0359062bea26105bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.124/fwdctl_v0.5.124_linux_amd64.tar.gz"
      sha256 "0e48ecf7a858ba10f88bbf78da6b6e8094634514ec8aef0253d07910cdd14a95"
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
