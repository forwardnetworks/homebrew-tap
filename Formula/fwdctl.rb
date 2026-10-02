class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.62"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.62/fwdctl_v0.5.62_darwin_arm64.tar.gz"
      sha256 "e676cac5d6837074d84d576d6c6c2db4d8e965784417d41046008455b6b996c0"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.62/fwdctl_v0.5.62_darwin_amd64.tar.gz"
      sha256 "94d976e7a0f1d122494ae8e75119acdf41e0b93679d86955cc4e06d15264e94f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.62/fwdctl_v0.5.62_linux_amd64.tar.gz"
      sha256 "0f355d1b8a2d6e09d6b99d318de1d6b697496cb59931e1e781da35ad2e5cd737"
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
