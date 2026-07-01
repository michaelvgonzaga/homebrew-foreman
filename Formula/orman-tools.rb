class OrmanTools < Formula
  desc "Native CLI binary for the 4ORMan framework"
  homepage "https://github.com/michaelvgonzaga/4orman-tools"
  url "https://github.com/michaelvgonzaga/4orman-tools/archive/refs/tags/v0.68.0.tar.gz"
  version "0.68.0"
  sha256 "9d634165efe6cff37551bdf7854776708f3b18b8de6f44d03bfa44a48390e7b3"

  depends_on "zig" => :build

  def install
    system "zig", "build", "-Doptimize=ReleaseSafe"
    bin.install "zig-out/bin/4orman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/4orman-tools 2>&1", 1)
  end
end
