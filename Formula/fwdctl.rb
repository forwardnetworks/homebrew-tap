class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.311"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.311/fwdctl_v0.5.311_darwin_arm64.tar.gz"
      sha256 "7d25736d7e2019d2e60f536d049789ccc1f8f997a97d7f3b3d9ab7c43e9ed7fb"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.311/fwdctl_v0.5.311_darwin_amd64.tar.gz"
      sha256 "0c7d6bd4ddb034df986321545286e3cddfbe40d3cc15ced7e583d2912f270465"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.311/fwdctl_v0.5.311_linux_amd64.tar.gz"
      sha256 "5e82a5681ab61d5c7c49be2d457a4d5a91ea696eebf22eb79c37a90579194b6f"
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
