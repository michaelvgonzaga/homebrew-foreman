class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.48.0/foreman-tools-v0.48.0-macos.tar.gz"
  sha256 "bee50a567b668fb010e920770d36e78d0b928430d630daf0646c225e6dc1d653"
  version "0.48.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
