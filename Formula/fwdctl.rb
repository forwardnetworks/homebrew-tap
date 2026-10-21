class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.186"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.186/fwdctl_v0.5.186_darwin_arm64.tar.gz"
      sha256 "6ad2db252213bc4c4768db4137080fe639484eabdfbe14013e275bbe80e806ac"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.186/fwdctl_v0.5.186_darwin_amd64.tar.gz"
      sha256 "3941f2fd7a8d0f5fc99b525ec21b33f67eec5c374cd163a0c93bcf8341408ba8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.186/fwdctl_v0.5.186_linux_amd64.tar.gz"
      sha256 "32e71a3b66b1c4ba5fdf51bd3cdd25f88b9a25f074d9d69549c95c91d93d1a2a"
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
