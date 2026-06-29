class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.26.0/foreman-tools-v0.26.0-macos.tar.gz"
  sha256 "56aed4b7a0025c77486cbee5f293cdc64ac1fd87ecb729aee3fe604ce10e5fa9"
  version "0.26.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
