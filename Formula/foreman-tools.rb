class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.10.0/foreman-tools-v0.10.0-macos.tar.gz"
  sha256 "dbbe19180bc4606a3383e9376735c3bb18849f4cb123794dc13057699fe672ec"
  version "0.10.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
