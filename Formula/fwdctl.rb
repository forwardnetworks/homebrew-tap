class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.59"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.59/fwdctl_v0.5.59_darwin_arm64.tar.gz"
      sha256 "79e8d7fe7afb35850589b5ab5553e01b0df2208307775ff5678b6cf7d545e0ff"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.59/fwdctl_v0.5.59_darwin_amd64.tar.gz"
      sha256 "10af812940893306405ae7b59575830e125e75605ee87f6c8ae505942fb944e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.59/fwdctl_v0.5.59_linux_amd64.tar.gz"
      sha256 "393dec6d829f507b2ab6e0847ac07ef73d7f523e114d556f45cc2ed4b45f8648"
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
