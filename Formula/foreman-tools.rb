class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/archive/refs/tags/v0.54.1.tar.gz"
  sha256 "a9ec267fe7abd0690916bc005e6d431750745e6015d3bafec54ed2141021daff"
  version "0.54.1"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
