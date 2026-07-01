class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/archive/refs/tags/v0.59.0.tar.gz"
  sha256 "ef5b2ffe8ee2429f20bf660002c8a1c33a35f574654221869b1cb5f4797ca67a"
  version "0.59.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
