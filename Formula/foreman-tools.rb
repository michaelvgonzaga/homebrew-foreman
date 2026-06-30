class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.53.0/foreman-tools-v0.53.0-macos.tar.gz"
  sha256 "51ea3ab453d32b521244caf0358e7d7272307bf2e1c81dd6e5060901b4e2e336"
  version "0.53.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
