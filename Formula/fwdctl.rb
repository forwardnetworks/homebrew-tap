class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.339"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.339/fwdctl_v0.5.339_darwin_arm64.tar.gz"
      sha256 "c947345d4968d0c342d91b60ba787210408311e1d5f6b86009dea60c02766aec"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.339/fwdctl_v0.5.339_darwin_amd64.tar.gz"
      sha256 "3f80417d536762ba51482957378a10781c25b5c0a676a47fd3673f35f458d613"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.339/fwdctl_v0.5.339_linux_amd64.tar.gz"
      sha256 "ec1ab233f214d0a6614b66d06b2d3097bcd76635c7f122f773d3267a36b6676e"
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
