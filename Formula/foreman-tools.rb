class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/archive/refs/tags/v0.56.0.tar.gz"
  sha256 "1a3c7fc9db393c1270dc5527180b2f64a5734319c11d4d5468448cc1d2f4bc1e"
  version "0.56.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
