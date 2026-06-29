class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.27.0/foreman-tools-v0.27.0-macos.tar.gz"
  sha256 "857b1394262b1edcb47be2b125a747b433c4f1ff2e51fe36ca8ae2244073d6c2"
  version "0.27.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
