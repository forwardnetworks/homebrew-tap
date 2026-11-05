class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.289"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.289/fwdctl_v0.5.289_darwin_arm64.tar.gz"
      sha256 "feb06babcba577c1a91c298946cd79eb2814a9f798f7bf11bec73fb678d9b0ae"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.289/fwdctl_v0.5.289_darwin_amd64.tar.gz"
      sha256 "0ead6b9157856b5cff790a3025c22ba2b85d7bd5fd176b05b08aa39e8da28496"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.289/fwdctl_v0.5.289_linux_amd64.tar.gz"
      sha256 "0054ab9a63b33357804ddb55759b3580861d0210a032cf5750b26348566899ac"
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
