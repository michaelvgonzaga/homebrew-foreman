class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.45.0/foreman-tools-v0.45.0-macos.tar.gz"
  sha256 "6cdd861fdb050bfbad5beb0b4c955b7778815e1665c6a79b55c97ca7967336ab"
  version "0.45.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
