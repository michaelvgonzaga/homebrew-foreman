class OrmanTools < Formula
  desc "Native CLI binary for the 4ORMan framework"
  homepage "https://github.com/michaelvgonzaga/4orman-tools"
  url "https://github.com/michaelvgonzaga/4orman-tools/archive/refs/tags/v0.64.0.tar.gz"
  version "0.64.0"
  sha256 "045a6b5524e5b46f435c5bea4d216f361b5572103e54747a4dfa82199af06a66"

  depends_on "zig" => :build

  def install
    system "zig", "build", "-Doptimize=ReleaseSafe"
    bin.install "zig-out/bin/4orman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/4orman-tools 2>&1", 1)
  end
end
