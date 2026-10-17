class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.157"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.157/fwdctl_v0.5.157_darwin_arm64.tar.gz"
      sha256 "fc5a1ed540bddca774ba4148388292909f16b07f2384252818ebb6cf35c590b5"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.157/fwdctl_v0.5.157_darwin_amd64.tar.gz"
      sha256 "d6d2feaf53d30ce116bc96aecb18d11123a04c0e4e9374800b82a3b473a19d8a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.157/fwdctl_v0.5.157_linux_amd64.tar.gz"
      sha256 "1a84b50ea19bf0d72b54f5da50f6f5569019ac24d045b2b683b89e8c38727bda"
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
