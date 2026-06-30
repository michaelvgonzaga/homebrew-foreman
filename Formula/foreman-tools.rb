class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.38.0/foreman-tools-v0.38.0-macos.tar.gz"
  sha256 "a8c75c46d84620c0b83e027194ba13c5ae6415875356eda7e668e765fb0f1197"
  version "0.38.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
