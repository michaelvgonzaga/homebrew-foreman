class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.33.0/foreman-tools-v0.33.0-macos.tar.gz"
  sha256 "a3c44ffdb98baf02ac738c98531559afcb1edc92d8bc571742d320be7bc0d8ac"
  version "0.33.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
