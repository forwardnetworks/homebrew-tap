class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.58"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.58/fwdctl_v0.5.58_darwin_arm64.tar.gz"
      sha256 "520e23aeb3af41a32cc07fcf1e830e0f6a8acd1c84cad7dd7cbf5a9765040ebf"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.58/fwdctl_v0.5.58_darwin_amd64.tar.gz"
      sha256 "ef2df966dafaad09d570062f040c93ca8f35d36fa5a433e3d0dde7c70c15ded4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.58/fwdctl_v0.5.58_linux_amd64.tar.gz"
      sha256 "025fbc9ef77257ce8a8cf8c55b582d0677bf12a9a1e6e4d7ac5a372d80fb1895"
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
