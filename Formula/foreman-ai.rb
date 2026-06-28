class ForemanAi < Formula
  desc "A Claude Code framework for structured, verified AI-assisted development"
  homepage "https://github.com/michaelvgonzaga/foreman"
  url "https://github.com/michaelvgonzaga/foreman/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "2b3417aaa8f0ef0e4010a6dd1fb0368a3049426b08b687953662c1755171cc78"
  version "1.1.0"

  head "https://github.com/michaelvgonzaga/foreman.git", branch: "main"

  depends_on "git"

  def install
    prefix.install Dir["*"] + Dir[".*"].reject { |f| f == "." || f == ".." }

    (bin/"foreman-ai").write <<~EOS
      #!/bin/bash
      set -e

      if ! command -v claude &>/dev/null; then
        echo ""
        echo "  ERROR: Claude Code is not installed."
        echo "  Install it from: https://claude.ai/code"
        echo ""
        exit 1
      fi

      if ! command -v git &>/dev/null; then
        echo ""
        echo "  ERROR: Git is not installed."
        echo "  Run: brew install git"
        echo ""
        exit 1
      fi

      DEST="$PWD/foreman"

      if [ ! -d "$DEST" ]; then
        echo "Initializing Foreman in $DEST ..."
        cp -r "#{prefix}" "$DEST"
        echo "Done."
      fi

      exec claude "$DEST"
    EOS

    chmod 0755, bin/"foreman-ai"
  end

  def caveats
    <<~EOS

      To open Foreman:
        foreman-ai

      First-time setup (inside Claude Code):
        /setup        — install plugins
        /new-project  — start your first project

    EOS
  end

  test do
    assert_predicate prefix/"README.md", :exist?
    assert_predicate bin/"foreman-ai", :executable?
  end
end
