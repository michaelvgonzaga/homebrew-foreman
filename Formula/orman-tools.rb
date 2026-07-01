class OrmanTools < Formula
  desc "Native CLI binary for the 4ORMan framework"
  homepage "https://github.com/michaelvgonzaga/4orman-tools"
  url "https://github.com/michaelvgonzaga/4orman-tools/archive/refs/tags/v0.63.0.tar.gz"
  version "0.63.0"
  sha256 "a10a6421948dc9b17e0f7d70bae6cf576daabff67bede0abbb59e229c063dc5e"

  depends_on "zig" => :build

  def install
    system "zig", "build", "-Doptimize=ReleaseSafe"
    bin.install "zig-out/bin/4orman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/4orman-tools 2>&1", 1)
  end
end
