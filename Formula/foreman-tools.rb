class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.42.0/foreman-tools-v0.42.0-macos.tar.gz"
  sha256 "b1b7459f2f563093512372e130a43a995f957c8c92a711ae7a15da676cf8205e"
  version "0.42.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
