class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.148"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.148/fwdctl_v0.5.148_darwin_arm64.tar.gz"
      sha256 "7d137af87c363c084055bfe9c1c19beddf425fc51380c5063d3b461da9f90dff"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.148/fwdctl_v0.5.148_darwin_amd64.tar.gz"
      sha256 "4886082d6cb193ab5be7a8b5dfcb383436979eb14b9fc3b48b24e58e5936276c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.148/fwdctl_v0.5.148_linux_amd64.tar.gz"
      sha256 "43de4f9f388c03c505d1c50a11689f8f1497e870414956fc8d7b9f2b589793f4"
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
