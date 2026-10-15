class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.117"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.117/fwdctl_v0.5.117_darwin_arm64.tar.gz"
      sha256 "17a3523846dd05111f0b9138092136cdad16037c5bf0bd759aa0b584019bccf8"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.117/fwdctl_v0.5.117_darwin_amd64.tar.gz"
      sha256 "04cb388e977d607ec3fdf4cfcef2d895e845f4f3506e2f4bfe060a80a709c232"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.117/fwdctl_v0.5.117_linux_amd64.tar.gz"
      sha256 "13c522c544b91182ce3c1de2e8ea2e6487715613283c215aedf529b5a37256d7"
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
