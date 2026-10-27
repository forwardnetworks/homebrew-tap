class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.228"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.228/fwdctl_v0.5.228_darwin_arm64.tar.gz"
      sha256 "0d37345645b673f58c7e4d364d9e521d16d918e1a6d79aa75a5a28c05d233f5a"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.228/fwdctl_v0.5.228_darwin_amd64.tar.gz"
      sha256 "aece2cb651e188fa8ee45205efbcca88e6fdcdf3fe186d836c12aae747aa1742"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.228/fwdctl_v0.5.228_linux_amd64.tar.gz"
      sha256 "cf1529440aa307b27f90c877a1e4ea9865f13725b9a72f3d9ccf7d5633aba7c7"
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
