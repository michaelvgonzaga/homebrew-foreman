class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.16.0/foreman-tools-v0.16.0-macos.tar.gz"
  sha256 "d9907182b28e1ffd2c4df58674348333dabadeb7da358bda4946bfc306bf34ab"
  version "0.16.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
