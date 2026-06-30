class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.32.0/foreman-tools-v0.32.0-macos.tar.gz"
  sha256 "2cc88ce1db2baf9bcc10dfdae0fb9e0d540b6c8f90ff2632127de2cfa01f442d"
  version "0.32.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
