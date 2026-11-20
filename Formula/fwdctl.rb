class Fwdctl < Formula
  desc "Forward Networks skills CLI: ask questions of a Forward network"
  homepage "https://github.com/forwardnetworks/fwdctl"
  version "0.5.361"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.361/fwdctl_v0.5.361_darwin_arm64.tar.gz"
      sha256 "8865f123ad1d03e95478d452cbaacb2a132763d417c50a258c536108cfc30905"
    end
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.361/fwdctl_v0.5.361_darwin_amd64.tar.gz"
      sha256 "cb246f42ad36d145cb95dd255e6f19f3b10a9afe40e9afccd4f4dc68f1231e19"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/forwardnetworks/fwdctl/releases/download/v0.5.361/fwdctl_v0.5.361_linux_amd64.tar.gz"
      sha256 "f8e75219335ed7eb6e2263d20310aea4ddc03571a970dd47952557f753c3ace4"
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
