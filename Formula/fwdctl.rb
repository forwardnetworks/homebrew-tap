class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.180"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.180/fwdctl_v0.5.180_darwin_arm64.tar.gz"
      sha256 "600017ac9614c026b5e1889cdec8d828d5a4750f714ec97260b6a16a50031273"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.180/fwdctl_v0.5.180_darwin_amd64.tar.gz"
      sha256 "b4815dba4d6bdf1ac83cd4d718a4c7e175bf1c6bb0c510849514f1a2ec764067"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.180/fwdctl_v0.5.180_linux_amd64.tar.gz"
      sha256 "2a3124052245904cbf7c9b21b67276d0be444a4910b166380d2bdb5664818d23"
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
