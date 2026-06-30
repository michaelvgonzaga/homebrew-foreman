class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.36.0/foreman-tools-v0.36.0-macos.tar.gz"
  sha256 "81b779146616abdd278cea62b6b85d8ce8fcd34df78f35fae0a63c2a8d4c4a18"
  version "0.36.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
