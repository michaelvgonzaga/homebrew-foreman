class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.29.1/foreman-tools-v0.29.1-macos.tar.gz"
  sha256 "2ad7fbe592a422f84be1fa726709155c507adf839dd08a91069f950555b2af1e"
  version "0.29.1"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
