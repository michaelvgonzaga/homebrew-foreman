class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.44.0/foreman-tools-v0.44.0-macos.tar.gz"
  sha256 "a3020e8a0045508a1c3ade65a282328fe5f88997102e7d3c9630ace0ab1e75c8"
  version "0.44.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
