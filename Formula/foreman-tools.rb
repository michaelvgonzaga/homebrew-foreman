class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.24.0/foreman-tools-v0.24.0-macos.tar.gz"
  sha256 "b01a9850008a5af12aa2077257620fbbd2c9ae7854c04512eb3c7349becafaef"
  version "0.24.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
