class ForemanAi < Formula
  desc "A Claude Code framework for structured, verified AI-assisted development"
  homepage "https://github.com/michaelvgonzaga/foreman"
  url "https://github.com/michaelvgonzaga/foreman/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "9996b441cb77ff2b05721a683f3dab9dfd01fe7827ce9a29e68faef88dad6cc0"
  version "1.3.1"

  head "https://github.com/michaelvgonzaga/foreman.git", branch: "main"

  depends_on "git"

  def install
    prefix.install Dir["*"] + Dir[".*"].reject { |f| f == "." || f == ".." }

    (bin/"foreman-ai").write <<~EOS
      #!/bin/bash
      set -e

      if ! command -v claude >/dev/null 2>&1; then
        echo ""
        echo "  ERROR: Claude Code is not installed."
        echo "  Install it from: https://claude.ai/code"
        echo ""
        exit 1
      fi

      if ! command -v git >/dev/null 2>&1; then
        echo ""
        echo "  ERROR: Git is not installed."
        echo "  Run: brew install git"
        echo ""
        exit 1
      fi

      if ! command -v gh >/dev/null 2>&1; then
        echo ""
        echo "  NOTE: GitHub CLI (gh) is not installed."
        echo "  Foreman needs it for repo creation, authentication, and pushing to GitHub."
        echo "  Run: brew install gh"
        echo ""
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
