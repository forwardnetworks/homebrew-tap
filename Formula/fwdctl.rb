class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.343"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.343/fwdctl_v0.5.343_darwin_arm64.tar.gz"
      sha256 "b830ee1aba3044ebeb05ce5bdda3ecf1b0fb588bfbe93b9e3739eb9edcc16662"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.343/fwdctl_v0.5.343_darwin_amd64.tar.gz"
      sha256 "eb1e5ee094e90d39c0a02ed8dc883281a74187bfa2fd64f2b494e9f499c0ae5e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.343/fwdctl_v0.5.343_linux_amd64.tar.gz"
      sha256 "b6e2659b567968e34a653b2e52819a8d1dea8726237b81cfcf56c9076ffd2000"
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
