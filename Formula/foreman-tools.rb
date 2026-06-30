class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.50.0/foreman-tools-v0.50.0-macos.tar.gz"
  sha256 "b3152ba38625033ed219eddae31b9a8e41c156cc1262cec88614b7199cb06d8a"
  version "0.50.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
