class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.34.0/foreman-tools-v0.34.0-macos.tar.gz"
  sha256 "42da788fb04d23ba89abe0c6d6eb9fefa9e677a7173fa54678759840e02437d1"
  version "0.34.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
