class ForemanAi < Formula
  desc "A Claude Code framework for structured, verified AI-assisted development"
  homepage "https://github.com/michaelvgonzaga/foreman"
  url "https://github.com/michaelvgonzaga/foreman/archive/refs/tags/v1.14.0.tar.gz"
  sha256 "d4150813b1a847fb909c66d3f35b16ae08f2bba3c09589223112d0861e1fee0c"
  version "1.14.0"

  head "https://github.com/michaelvgonzaga/foreman.git", branch: "main"

  depends_on "git"
  depends_on "michaelvgonzaga/foreman/foreman-tools"

  def install
    prefix.install Dir["*"] + Dir[".*"].reject { |f| f == "." || f == ".." }

    (bin/"foreman-ai").write <<~EOS
      #!/bin/bash
      set -e

      if command -v foreman-tools >/dev/null 2>&1; then
        _doctor="$(foreman-tools doctor 2>/dev/null)"
        if [ "$(echo "$_doctor" | grep '"claude": false')" != "" ]; then
          echo ""
          echo "  ERROR: Claude Code is not installed."
          echo "  Install it from: https://claude.ai/code"
          echo ""
          exit 1
        fi
        if [ "$(echo "$_doctor" | grep '"git": false')" != "" ]; then
          echo ""
          echo "  ERROR: Git is not installed."
          echo "  Run: brew install git"
          echo ""
          exit 1
        fi
        if [ "$(echo "$_doctor" | grep '"gh": false')" != "" ]; then
          echo ""
          echo "  NOTE: GitHub CLI (gh) is not installed."
          echo "  Foreman needs it for repo creation, authentication, and pushing to GitHub."
          echo "  Run: brew install gh"
          echo ""
        fi
      else
        echo ""
        echo "  NOTE: foreman-tools is not installed."
        echo "  Install it for faster sessions (cuts session-start token cost ~70%):"
        echo "  Run: brew install michaelvgonzaga/foreman/foreman-tools"
        echo ""
        if ! command -v claude >/dev/null 2>&1; then
          echo "  ERROR: Claude Code is not installed. Install it from: https://claude.ai/code"
          exit 1
        fi
        if ! command -v git >/dev/null 2>&1; then
          echo "  ERROR: Git is not installed. Run: brew install git"
          exit 1
        fi
        if ! command -v gh >/dev/null 2>&1; then
          echo "  NOTE: GitHub CLI (gh) not installed. Run: brew install gh"
        fi
      fi

      DEST="$PWD/foreman"

      if [ ! -d "$DEST" ]; then
        echo "Initializing Foreman in $DEST ..."
        # Clone so the workspace tracks origin/main and the self-update skill works.
        # Fall back to a local copy if the clone fails (offline); self-update is then unavailable.
        if ! git clone --quiet https://github.com/michaelvgonzaga/foreman.git "$DEST"; then
          echo "  (git clone failed — using a local copy; self-update won't be available)"
          cp -r "#{prefix}" "$DEST"
        fi
        touch "$DEST/.first-run"
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

      On first run, Foreman will walk you through setup automatically (/first-run).
      It checks dependencies, sets up automation, and gets you ready to build.

    EOS
  end

  test do
    assert_predicate prefix/"README.md", :exist?
    assert_predicate bin/"foreman-ai", :executable?
  end
end
