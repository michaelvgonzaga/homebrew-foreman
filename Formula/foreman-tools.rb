class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.15.0/foreman-tools-v0.15.0-macos.tar.gz"
  sha256 "9d9699ed4a84b9a32484cc3fb984985a2cc72602bd34b077aba08e2d9afbe0ee"
  version "0.15.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
