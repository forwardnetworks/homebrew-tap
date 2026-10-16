class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.129"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.129/fwdctl_v0.5.129_darwin_arm64.tar.gz"
      sha256 "51f7e7b73c91325c8d18214cd4f50bd2ab4110fbcf5b6230f6a5a745e095e27f"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.129/fwdctl_v0.5.129_darwin_amd64.tar.gz"
      sha256 "c1c156ef7e7860468a8faac7ee886acf3143275a4e886b4346c5c92ed90cc7f7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.129/fwdctl_v0.5.129_linux_amd64.tar.gz"
      sha256 "a8757772f8578cec15c705844fce26ced4e9858e05dc8042a51987907533831d"
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
