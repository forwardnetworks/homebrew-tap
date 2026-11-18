class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.344"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.344/fwdctl_v0.5.344_darwin_arm64.tar.gz"
      sha256 "8789695ddbd85d91e5ab5b1fb7bf0277efac2408b3f608afd06f34d21dc1bc1e"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.344/fwdctl_v0.5.344_darwin_amd64.tar.gz"
      sha256 "dd2bb30a03ee855dbc8e91e12b9e5a6123f939b2d26169441021a087f98e8b6d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.344/fwdctl_v0.5.344_linux_amd64.tar.gz"
      sha256 "94bb1bbf11f3e407e91b40b58962489e6385ded477ff7141d3f24419ca88bfd8"
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
