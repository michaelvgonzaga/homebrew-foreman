class Foreman < Formula
  desc "A Claude Code framework for structured, verified AI-assisted development"
  homepage "https://github.com/michaelvgonzaga/foreman"
  url "https://github.com/michaelvgonzaga/foreman/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b01b78c51d09fa4bb2bdbc065805b2b1edbbca4f3e82980ab080a7882eab7c5c"
  version "1.0.0"

  head "https://github.com/michaelvgonzaga/foreman.git", branch: "main"

  depends_on "git"

  def install
    prefix.install Dir["*", ".*"]

    (bin/"foreman").write <<~EOS
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

    chmod 0755, bin/"foreman"
  end

  def caveats
    <<~EOS

      To open Foreman:
        foreman

      First-time setup (inside Claude Code):
        /setup        — install plugins
        /new-project  — start your first project

    EOS
  end

  test do
    assert_predicate prefix/"README.md", :exist?
    assert_predicate bin/"foreman", :executable?
  end
end
