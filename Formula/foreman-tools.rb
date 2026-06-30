class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.41.0/foreman-tools-v0.41.0-macos.tar.gz"
  sha256 "9b66b69e4e318c58f3f7fffad2e0e8707eb42725cd85d0df9e1fe6bc6cfeeaf8"
  version "0.41.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
