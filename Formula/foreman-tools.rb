class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.37.0/foreman-tools-v0.37.0-macos.tar.gz"
  sha256 "9a6a6afc19be812995fc5f1d991d7bdfbac87213d2faec376c75f97650a430ae"
  version "0.37.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
