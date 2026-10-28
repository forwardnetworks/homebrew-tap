class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.241"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.241/fwdctl_v0.5.241_darwin_arm64.tar.gz"
      sha256 "e34338fcde9358f1f50955f07ffc9093955c675470049eb13b5f08a58ae24bef"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.241/fwdctl_v0.5.241_darwin_amd64.tar.gz"
      sha256 "4764633d61070521cecbe3264f6ba06b52ac23b941033755a8f8078a63635d1a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.241/fwdctl_v0.5.241_linux_amd64.tar.gz"
      sha256 "82ba94b7de785281cc5cf9d6f5e8d33af728285411c59bfb7602574131db7b4d"
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
