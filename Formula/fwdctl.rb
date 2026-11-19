class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.359"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.359/fwdctl_v0.5.359_darwin_arm64.tar.gz"
      sha256 "194f29c2a2bea2a16142a9e9ca72445a618dfaf1ef59e9728fa742ca92049b83"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.359/fwdctl_v0.5.359_darwin_amd64.tar.gz"
      sha256 "65dbcdcb51e9f6169cbee2efc6d3969c0a249c2da798d0f4373ca6d1b7e4e8d2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.359/fwdctl_v0.5.359_linux_amd64.tar.gz"
      sha256 "a5a4b06eb80b84f26f542e694f6c7086dba189ad6e37f4919221e6974e89aca6"
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
