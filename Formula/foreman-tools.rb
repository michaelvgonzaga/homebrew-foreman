class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.40.0/foreman-tools-v0.40.0-macos.tar.gz"
  sha256 "ebcc7ed8272e03f98740b124603f3a9649457da4b3651c29132f23fbd6aff494"
  version "0.40.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
