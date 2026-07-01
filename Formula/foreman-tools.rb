class ForemanTools < Formula
  desc "Native CLI binary for the Foreman framework — offloads data-gathering from Claude's token budget"
  homepage "https://github.com/michaelvgonzaga/foreman-tools"
  url "https://github.com/michaelvgonzaga/foreman-tools/archive/refs/tags/v0.61.0.tar.gz"
  sha256 "5f4ffa3831f037457bb9c3c9ebcefdf1ec000eaa2aff2bc88c551e3d4ebbbe61"
  version "0.61.0"

  depends_on "zig" => :build

  def install
    system "zig", "build", "-Doptimize=ReleaseSafe"
    bin.install "zig-out/bin/foreman-tools"
  end

  test do
    assert_match "usage", shell_output("#{bin}/foreman-tools 2>&1", 1)
  end
end
