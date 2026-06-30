class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.47.0/foreman-tools-v0.47.0-macos.tar.gz"
  sha256 "f8e1716a439473fa34e5c8b02f4917dfc1bf837d60274b2fd85acf279fb79e4c"
  version "0.47.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
