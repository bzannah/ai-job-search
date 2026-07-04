#!/bin/bash
# SessionStart hook: make Claude Code on the web sessions ready to compile
# the LaTeX application documents (CV via lualatex, cover letter via xelatex).
#
# - Web-only: exits immediately on local machines (CLAUDE_CODE_REMOTE unset).
# - Idempotent: skips the install when TeX is already present (the remote
#   container state is cached after the hook completes, so later sessions
#   start fast).
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

if command -v lualatex >/dev/null 2>&1 && command -v xelatex >/dev/null 2>&1 \
   && kpsewhich pzdr.tfm >/dev/null 2>&1; then
  echo "TeX already installed - skipping."
  exit 0
fi

echo "Installing TeX Live (lualatex + xelatex + moderncv/fontawesome5)..."
export DEBIAN_FRONTEND=noninteractive
apt-get update -qq || true
apt-get install -y --no-install-recommends \
  texlive-luatex \
  texlive-xetex \
  texlive-latex-extra \
  texlive-fonts-extra \
  texlive-fonts-recommended \
  > /tmp/texlive-install.log 2>&1 || {
    echo "TeX Live install failed; see /tmp/texlive-install.log" >&2
    tail -5 /tmp/texlive-install.log >&2
    exit 1
  }

echo "TeX Live installed: $(lualatex --version | head -1) / $(xelatex --version | head -1)"
