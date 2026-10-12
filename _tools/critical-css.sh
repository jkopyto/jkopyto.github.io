#!/bin/sh
# Regenerates _includes/critical-home.css: the CSS the home page needs to draw its first screen
# (navbar, hero, cookie banner). _includes/head.html inlines it on the home page and loads the full
# stylesheets in the background, so no CSS file blocks the first paint on phones.
# Run it after changing styles that affect the navbar, hero or cookie banner, and after
# _tools/purge-bootstrap.sh; then check the home page and commit the regenerated file.
set -e
cd "$(dirname "$0")/.."
repo=$(pwd)
tmp=$(mktemp -d)
port=4199
bundle exec jekyll build -q --config _config.yml,_tools/critical-off.yml -d "$tmp/site"
(cd "$tmp/site" && exec python3 -m http.server $port >/dev/null 2>&1) &
server=$!
trap 'kill $server 2>/dev/null; rm -rf "$tmp"' EXIT
(cd "$tmp" && npm init -y >/dev/null && PUPPETEER_SKIP_DOWNLOAD=1 npm i --silent --no-audit --no-fund critical@7 >/dev/null)
cp _tools/critical-home.mjs "$tmp/"
PUPPETEER_EXECUTABLE_PATH="${CHROME:-$(command -v google-chrome-stable || command -v chromium)}" \
  node "$tmp/critical-home.mjs" "$tmp/site" "http://127.0.0.1:$port/" > "$repo/_includes/critical-home.css"
echo "_includes/critical-home.css: $(wc -c < "$repo/_includes/critical-home.css") bytes"
