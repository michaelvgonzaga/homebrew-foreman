class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.3.0/foreman-tools-v0.3.0-macos.tar.gz"
  sha256 "97cb8dee2db1af90d6c1a92392d13e6d00de2d6927b8a63c0415447561d2a5ac"
  version "0.3.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
