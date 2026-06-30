class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.35.0/foreman-tools-v0.35.0-macos.tar.gz"
  sha256 "0206faa4bbd0612d1ce990e34064407cd201bdc7f4f461aaacd066b9bbc64713"
  version "0.35.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
