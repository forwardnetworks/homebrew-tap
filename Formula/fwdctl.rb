class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.325"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.325/fwdctl_v0.5.325_darwin_arm64.tar.gz"
      sha256 "5474060ff77cd7cee12e2ea11f811a45de692c568fc268a72a036b993e1eba7e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.325/fwdctl_v0.5.325_darwin_amd64.tar.gz"
      sha256 "79ea0f2fd1f5680894dedeb09e483089973e416540266f5d3f10b0dba573c93a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.325/fwdctl_v0.5.325_linux_amd64.tar.gz"
      sha256 "ba20111880988630880cbf722a93918a65e7d4774db4d807696ee4c562408a7f"
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
