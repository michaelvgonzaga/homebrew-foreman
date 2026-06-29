class Plowman < Formula
  desc "Turn codebases, SQL dumps, and logs into structured context for AI assistants"
  homepage "https://github.com/michaelvgonzaga/plowman"
  url "https://github.com/michaelvgonzaga/plowman/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "41e0b565467efc44a31a5fd782b8f11b7fd4248af5ee6da59ede8d6503e519fd"
  version "1.0.1"

  head "https://github.com/michaelvgonzaga/plowman.git", branch: "main"

  depends_on "zig" => :build
  depends_on "ripgrep"
  depends_on "fd"
  depends_on "jq"

  def install
    system "zig", "build", "-Doptimize=ReleaseSafe", "--prefix", prefix
  end

  def caveats
    <<~EOS

      Plowman is installed. Quick start:

        plowman scan repo <path>           # scan a codebase
        plowman scan db <dump.sql>         # analyze a SQL dump
        plowman scan log <file>            # analyze a log file
        plowman doctor                     # check dependencies

      To wrap an existing script as a plugin:

        plowman plugin install <manifest.yml>
        plowman <domain> <command>

    EOS
  end

  test do
    assert_match "usage: plowman", shell_output("#{bin}/plowman 2>&1", 1)
  end
end
