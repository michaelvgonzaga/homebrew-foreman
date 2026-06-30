class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.51.0/foreman-tools-v0.51.0-macos.tar.gz"
  sha256 "820427181a131cd108bc559a3b96d0e94ae8fcbd2c20fadf3238ec3fcefff681"
  version "0.51.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
