class OrmanTools < Formula
  desc "Native CLI binary for the 4ORMan framework"
  homepage "https://github.com/michaelvgonzaga/4orman-tools"
  url "https://github.com/michaelvgonzaga/4orman-tools/archive/refs/tags/v0.67.0.tar.gz"
  version "0.67.0"
  sha256 "0c7e4fdbc25876b34d19e657e3dfabc439d9848e2d537c08e87f47c63453cc45"

  depends_on "zig" => :build

  def install
    system "zig", "build", "-Doptimize=ReleaseSafe"
    bin.install "zig-out/bin/4orman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/4orman-tools 2>&1", 1)
  end
end
