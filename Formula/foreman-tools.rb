class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.8.0/foreman-tools-v0.8.0-macos.tar.gz"
  sha256 "b5f71743cb8bc753f1786b1c02527fc17bbbdbc24cd8cdedede613c133b51c37"
  version "0.8.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
