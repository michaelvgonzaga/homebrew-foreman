class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.25.0/foreman-tools-v0.25.0-macos.tar.gz"
  sha256 "28c8a9175be7829250c66f99cbcd6b7437df3be411b9aa329afb42e367d3d250"
  version "0.25.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
