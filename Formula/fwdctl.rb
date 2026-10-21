class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.187"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.187/fwdctl_v0.5.187_darwin_arm64.tar.gz"
      sha256 "551ad11863a4c05aebaa8135420bca5cdd7264492fe8f8d1a79d6d22987f9f81"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.187/fwdctl_v0.5.187_darwin_amd64.tar.gz"
      sha256 "74659aefb920d6405763bb5032e8951ed9fd044dde4dbd48438bb3921d3ef49d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.187/fwdctl_v0.5.187_linux_amd64.tar.gz"
      sha256 "a3e38ec3feecf9b30f31ed843e926f13f6280c292dd382b57262bffba27bb005"
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
