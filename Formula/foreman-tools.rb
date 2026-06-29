class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.17.0/foreman-tools-v0.17.0-macos.tar.gz"
  sha256 "b0b03174d24a1c789ef4ef57181eba14c5d4583b934793573b6b47dc9c6bcd6c"
  version "0.17.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
