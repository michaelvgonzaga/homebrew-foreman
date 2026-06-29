class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.6.0/foreman-tools-v0.6.0-macos.tar.gz"
  sha256 "fa7741bb27921ef6a831e0573ddd4855aec459c2c35cf8b311e0a9e104b9cdd9"
  version "0.6.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
