class OrmanTools < Formula
  desc "Native CLI binary for the 4ORMan framework"
  homepage "https://github.com/michaelvgonzaga/4orman-tools"
  url "https://github.com/michaelvgonzaga/4orman-tools/archive/refs/tags/v0.62.0.tar.gz"
  version "0.62.0"
  sha256 "917e076876a6e8cbfa80f1e9faa7589e8bdeacaed5d992d15679348c0de6ca39"

  depends_on "zig" => :build

  def install
    system "zig", "build", "-Doptimize=ReleaseSafe"
    bin.install "zig-out/bin/4orman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/4orman-tools 2>&1", 1)
  end
end
