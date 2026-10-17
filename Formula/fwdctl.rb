class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.150"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.150/fwdctl_v0.5.150_darwin_arm64.tar.gz"
      sha256 "1659d4e422da82ff5967355f3ff627192edf586d54d2560de611938ca33ec2af"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.150/fwdctl_v0.5.150_darwin_amd64.tar.gz"
      sha256 "b711799bbc5a17c356746b591ecbf62b85641c190de9a88679c9c2f76ba4492a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.150/fwdctl_v0.5.150_linux_amd64.tar.gz"
      sha256 "a36f7cb96f467cbdef7247b4dff4a6c09f7b545f0cef53133e98a3af6acbc277"
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
