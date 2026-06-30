class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.39.0/foreman-tools-v0.39.0-macos.tar.gz"
  sha256 "6d487cf0b9176dade476f934f9157e039ed7e705ec84ac971134d09394bb17f1"
  version "0.39.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
