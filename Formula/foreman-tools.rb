class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.11.0/foreman-tools-v0.11.0-macos.tar.gz"
  sha256 "0ba6d4a8d0412fc85a649c56695652be904df39d2bf019467d95dd297cd6ed78"
  version "0.11.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
