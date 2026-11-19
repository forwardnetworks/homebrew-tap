class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.360"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.360/fwdctl_v0.5.360_darwin_arm64.tar.gz"
      sha256 "fc9b429b38dcc6885473a44d6962486484daf32758f77603fa4ea8bd21ebbce9"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.360/fwdctl_v0.5.360_darwin_amd64.tar.gz"
      sha256 "07fb49ca1ab0c9815aed55bd624cfdda4e1793ddb0029bd54a5611c20861e524"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.360/fwdctl_v0.5.360_linux_amd64.tar.gz"
      sha256 "7545ca984647ab837feed7988b9d9fbcd66931713f18a28167034956ee003b48"
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
