#!/usr/bin/env bash
# Auto-rebuild a LaTeX file to PDF on every save.
# Usage:  ./watch.sh [file.tex]
#   - With no argument, auto-detects the .tex containing \documentclass
#     in the CURRENT directory (run it from wherever your CV/paper lives).
# Stop with Ctrl-C.
set -euo pipefail

TEX="${1:-}"

if [[ -z "$TEX" ]]; then
  # Find the main source: the .tex file that has \documentclass.
  mapfile -t CANDIDATES < <(grep -l '\\documentclass' ./*.tex 2>/dev/null || true)
  if [[ ${#CANDIDATES[@]} -eq 1 ]]; then
    TEX="${CANDIDATES[0]}"
  elif [[ ${#CANDIDATES[@]} -eq 0 ]]; then
    echo "watch.sh: no .tex with \\documentclass found in $(pwd)" >&2
    exit 1
  else
    echo "watch.sh: multiple candidates, pass one explicitly:" >&2
    printf '  %s\n' "${CANDIDATES[@]}" >&2
    exit 1
  fi
fi

echo "watch.sh: watching '$TEX' -> ${TEX%.tex}.pdf  (Ctrl-C to stop)"

# -pvc       preview-continuously: watch source + deps, rebuild on every save
# -view=none headless-safe: rebuild only, never try to launch a viewer
exec latexmk -pdf -pvc -view=none -halt-on-error -interaction=nonstopmode "$TEX"
