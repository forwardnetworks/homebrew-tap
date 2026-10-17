class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.159"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.159/fwdctl_v0.5.159_darwin_arm64.tar.gz"
      sha256 "b86381afe140744792e339b09fa2a13d7aacbab4d155b74b0738fe85cd6dd499"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.159/fwdctl_v0.5.159_darwin_amd64.tar.gz"
      sha256 "8befbfa0de6cf0bde9a53298203bae48218d5bbf0aeb6978c4c60466ae8e053e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.159/fwdctl_v0.5.159_linux_amd64.tar.gz"
      sha256 "fdf49c9e49d05434c2ae8e0e2b6ac70b435d1945ffead66ac19760bb8cc9fa1c"
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
