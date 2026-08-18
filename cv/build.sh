#!/usr/bin/env bash
# Randează CV-ul în PDF din sursele HTML, prin Chrome headless.
# Fonturile și poza sunt locale, deci nu e nevoie de rețea.
#
#   bash cv/build.sh
#
# Rezultat, în rădăcina repo-ului:
#   CV_Cristian_Lacatus_Software_Engineer.pdf   (engleză, numele la care trimit site-ul și README)
#   CV_Cristian_Lacatus_RO.pdf                  (română)

set -euo pipefail

cd "$(dirname "$0")"
repo_root="$(cd .. && pwd)"

chrome="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
if [[ ! -x "$chrome" ]]; then
  echo "Google Chrome nu e la $chrome" >&2
  exit 1
fi

render() {
  local src="$1" out="$2"
  "$chrome" \
    --headless=new \
    --disable-gpu \
    --no-pdf-header-footer \
    --run-all-compositor-stages-before-draw \
    --virtual-time-budget=10000 \
    --print-to-pdf="$out" \
    "file://$PWD/$src" 2>/dev/null
  echo "$(basename "$out") — $(du -h "$out" | cut -f1)"
}

render cv-en.html "$repo_root/CV_Cristian_Lacatus_Software_Engineer.pdf"
render cv-ro.html "$repo_root/CV_Cristian_Lacatus_RO.pdf"

# Site-ul servește varianta în engleză din assets/.
site_assets="/Volumes/cristi/cRs011.github.io/assets"
if [[ -d "$site_assets" ]]; then
  cp "$repo_root/CV_Cristian_Lacatus_Software_Engineer.pdf" "$site_assets/"
  echo "copiat în $site_assets/"
fi
