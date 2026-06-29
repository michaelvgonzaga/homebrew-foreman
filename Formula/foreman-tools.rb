class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.28.0/foreman-tools-v0.28.0-macos.tar.gz"
  sha256 "fcbdccc978d7e0f9bde84a6981f6e73beb6ba59731dd7e24d624f097cac8cb49"
  version "0.28.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
