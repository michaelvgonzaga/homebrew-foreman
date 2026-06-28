class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.5.0/foreman-tools-v0.5.0-macos.tar.gz"
  sha256 "28445661f935cc4288d73ced993688c7bd52b1443691fe09ab02e1786c8452f3"
  version "0.5.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
