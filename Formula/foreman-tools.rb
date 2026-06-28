class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.1.0/foreman-tools-v0.1.0-macos.tar.gz"
  sha256 "9ae51b559577353fa1b6515554d2f439312788727698945af3ed3732c1cd3c34"
  version "0.1.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
