class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.93"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.93/fwdctl_v0.5.93_darwin_arm64.tar.gz"
      sha256 "2ac6b9c850ad65d2552522c881a783f601dde1f730dfec26ffe198f31319ed5c"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.93/fwdctl_v0.5.93_darwin_amd64.tar.gz"
      sha256 "b75f97c40d11b29dbcc03b2b09b8484836c05e910f27836992c7951cc3661b7d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.93/fwdctl_v0.5.93_linux_amd64.tar.gz"
      sha256 "8bc1131ebb1d8d79359442d136fe5158e5bcdf6f3bb565b5d12b367dba3c4f24"
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
