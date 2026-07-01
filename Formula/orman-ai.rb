class OrmanAi < Formula
  desc "Claude Code framework for structured, verified AI-assisted development"
  homepage "https://github.com/michaelvgonzaga/4orman"
  url "https://github.com/michaelvgonzaga/4orman/archive/refs/tags/v1.28.0.tar.gz"
  version "1.28.0"
  sha256 "85bfcd45cebd5706e6bc08456472fa32b74a80097d478c0bda8c6b97ceac65ee"

  head "https://github.com/michaelvgonzaga/4orman.git", branch: "main"

  depends_on "git"
  depends_on "michaelvgonzaga/4orman/orman-tools"

  def install
    prefix.install Dir["*"] + Dir[".*"].reject { |f| [".", ".."].include?(f) }
  end

  def caveats
    <<~EOS

      To open 4ORMan:
        4orman-ai

      On first run, 4ORMan will walk you through setup automatically (/first-run).
      It checks dependencies, sets up automation, and gets you ready to build.

    EOS
  end

  test do
    assert_path_exists prefix/"README.md"
    assert_predicate bin/"4orman-ai", :executable?
  end
end
