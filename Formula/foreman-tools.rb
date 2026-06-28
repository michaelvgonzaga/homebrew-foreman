class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.2.0/foreman-tools-v0.2.0-macos.tar.gz"
  sha256 "647934ba529d2995b25805dcf3d18653667ec61ebd8d68cb64ea9c8cde7ed3df"
  version "0.2.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
