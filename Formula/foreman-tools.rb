class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.23.0/foreman-tools-v0.23.0-macos.tar.gz"
  sha256 "d4c81cb0a6d48a6e3c2536e466738e1c7d7a9c7c523b095548c74dfc9f4feffd"
  version "0.23.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
