class Plowman < Formula
  desc "Turn codebases, SQL dumps, and logs into structured context for AI assistants"
  homepage "https://github.com/michaelvgonzaga/plowman"
  url "https://github.com/michaelvgonzaga/plowman/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "8a3117b7a0cd237e0debde6627eb4af96d924f0f039a186e4e21cd1d42d6b720"
  version "1.0.0"

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
