class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.30.0/foreman-tools-v0.30.0-macos.tar.gz"
  sha256 "0b98c1333a14f7b3a06091f4d7096b677dce565ac4d4ad3949d8856bc9b01f57"
  version "0.30.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
