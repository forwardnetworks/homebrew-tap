class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.369"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.369/fwdctl_v0.5.369_darwin_arm64.tar.gz"
      sha256 "6e4199c4025a71a6ebfa0dae62c6e2845cbcfe7c41d0330fee83dd33515d9f76"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.369/fwdctl_v0.5.369_darwin_amd64.tar.gz"
      sha256 "3415959aa9ed5c3cd462389ee8d617d9c499863515a429bb2220031ead1e2755"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.369/fwdctl_v0.5.369_linux_amd64.tar.gz"
      sha256 "20cddae65e5f4340f8ed012a21c10838da7695690ae2f8d03c9bdfb3e0b2ecf7"
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
