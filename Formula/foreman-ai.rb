class ForemanAi < Formula
  desc "A Claude Code framework for structured, verified AI-assisted development"
  homepage "https://github.com/michaelvgonzaga/foreman"
  url "https://github.com/michaelvgonzaga/foreman/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "647cc7ed3ba3eaebacd6bd80f8d9215e8276ad7588466b91ffd9fa2572ad9e79"
  version "1.3.0"

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
