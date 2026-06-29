class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.12.0/foreman-tools-v0.12.0-macos.tar.gz"
  sha256 "2406524177c7e4583230fcf13f2bd543151da8968542e8c3dbaf8b72dae0539b"
  version "0.12.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
