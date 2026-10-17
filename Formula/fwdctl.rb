class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.144"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.144/fwdctl_v0.5.144_darwin_arm64.tar.gz"
      sha256 "df0c5a058529e8be8d9b7276b5f3d0980d298b2c645b8184c385e0f34f2cda7a"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.144/fwdctl_v0.5.144_darwin_amd64.tar.gz"
      sha256 "6fb4ec72419b934ef7292c7751fa5c6ec42108cfbcc7349270b34dd2e1ac6ddf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.144/fwdctl_v0.5.144_linux_amd64.tar.gz"
      sha256 "ceb934cb570daad77b7952567afcdd2da279e2b0951869b2751bf1475529b2f9"
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
