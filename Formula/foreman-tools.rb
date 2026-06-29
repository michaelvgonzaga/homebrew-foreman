class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/releases/download/v0.29.0/foreman-tools-v0.29.0-macos.tar.gz"
  sha256 "3ff372777828f7b1208e66468b96a30fe6b6097d80322bdd9015504e67923305"
  version "0.29.0"

  def install
    bin.install "foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
