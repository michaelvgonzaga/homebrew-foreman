class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.19.0/foreman-tools-v0.19.0-macos.tar.gz"
  sha256 "7cbe00c307c16d7b43a5f4826e08233d7d2401b50f3823083b1b57893a3f0090"
  version "0.19.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
