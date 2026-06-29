class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.18.0/foreman-tools-v0.18.0-macos.tar.gz"
  sha256 "b769cbaab905d26347e462ef0d132f5c81f637e8a6c2f82ec356e1b13e66b7e7"
  version "0.18.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
