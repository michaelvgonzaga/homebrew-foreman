class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/archive/refs/tags/v0.54.0.tar.gz"
  sha256 "eaadd695b17a21dca4cbce5e715975c62dcc164763d1e4a85771f54ebf3bc6e3"
  version "0.54.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
