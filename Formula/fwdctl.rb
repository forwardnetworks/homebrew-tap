class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.355"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.355/fwdctl_v0.5.355_darwin_arm64.tar.gz"
      sha256 "b74373514b0dc07d0c75796a5a0fa4ef227ca92eabe154f7df1c8e9fcdc80ab6"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.355/fwdctl_v0.5.355_darwin_amd64.tar.gz"
      sha256 "2330efd3da5581a7539502471e912d464f39cf5bfe96dea9edf7bc3f489ec63d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.355/fwdctl_v0.5.355_linux_amd64.tar.gz"
      sha256 "80e072d49b44cbab4ea34078fb50c72eb64e9c545e666d6b7d2523472ab1c70d"
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
