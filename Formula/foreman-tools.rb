class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.46.0/foreman-tools-v0.46.0-macos.tar.gz"
  sha256 "3e37d28c3944bd6c5869280c0afe5ef9423c039ac57e1d61683b1664428f0e9c"
  version "0.46.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
