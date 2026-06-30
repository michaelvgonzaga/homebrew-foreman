class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.49.0/foreman-tools-v0.49.0-macos.tar.gz"
  sha256 "039a9993698cecd9ddee5ee7c7249fba76ff7e53b2c32bd25866f2ef6e9e4716"
  version "0.49.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
