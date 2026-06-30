class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.31.0/foreman-tools-v0.31.0-macos.tar.gz"
  sha256 "719c86253daf9bdd792a245e7f3c55b1d55343a21ab1b3932be1f07e2588105d"
  version "0.31.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
