class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.13.0/foreman-tools-v0.13.0-macos.tar.gz"
  sha256 "9dc5d57876e7be6208bf70274476607394966a42c881b369ddf58c5e06f4133c"
  version "0.13.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
