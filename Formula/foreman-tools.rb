class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.9.0/foreman-tools-v0.9.0-macos.tar.gz"
  sha256 "95c1271319b030f8f4e8949eeb9ec24f592033674fdcb032de9512d629bab68d"
  version "0.9.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
