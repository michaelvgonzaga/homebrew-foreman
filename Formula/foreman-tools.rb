class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.7.0/foreman-tools-v0.7.0-macos.tar.gz"
  sha256 "bf9d9550d90cdb9f71f948d0c9df5cfd114a3d3f313bd88b0291dd51dbecc2ca"
  version "0.7.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
