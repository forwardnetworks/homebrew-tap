class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.281"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.281/fwdctl_v0.5.281_darwin_arm64.tar.gz"
      sha256 "28969451aa10d7f5f6ea48951084198c4469413326af88ac69eaf1288c9fe8d6"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.281/fwdctl_v0.5.281_darwin_amd64.tar.gz"
      sha256 "33cbdbeb150ecb0ce29c61e6206ec3eddc38fd9f7f91e475bce9da4a76769998"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.281/fwdctl_v0.5.281_linux_amd64.tar.gz"
      sha256 "62e809bb3e69107028945e0a77ca0a154df65b24c4983be0a6dc5801b4bd54de"
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
