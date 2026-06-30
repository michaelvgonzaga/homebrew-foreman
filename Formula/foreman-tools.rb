class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.52.0/foreman-tools-v0.52.0-macos.tar.gz"
  sha256 "435edec7f0883f36577c9012455b6574218b77a55ff457ce04d16aa793503fa6"
  version "0.52.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
