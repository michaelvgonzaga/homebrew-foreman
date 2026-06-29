class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.14.0/foreman-tools-v0.14.0-macos.tar.gz"
  sha256 "dc8cafb3afe5e10e06deb589611beab4706621f63ceb0f6732d61295d8020265"
  version "0.14.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
