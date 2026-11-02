class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.261"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.261/fwdctl_v0.5.261_darwin_arm64.tar.gz"
      sha256 "b7440f1deca215da1a8e87054daaae138dc0865ec3d00aed6c6b4b4d04713cbd"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.261/fwdctl_v0.5.261_darwin_amd64.tar.gz"
      sha256 "cababae569f81f17b823d8fad93d19a44951737361be7881cf1f4add30178d92"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.261/fwdctl_v0.5.261_linux_amd64.tar.gz"
      sha256 "75d82c239be1df7565cf390f040068c26c4b727559ad0d8d085134d08a0dd4f7"
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
