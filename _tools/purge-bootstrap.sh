#!/bin/sh
# Rebuilds assets/css/bootstrap.purged.min.css: the theme's Bootstrap 4.3.1 minus classes the site never uses.
# Run it whenever a template, page or _data file starts using a Bootstrap class it didn't use before,
# then compare the pages and commit the regenerated CSS.
set -e
cd "$(dirname "$0")/.."
bundle exec jekyll build -q
tmp=$(mktemp -d)
npx --yes purgecss@6 --config _tools/purgecss.config.cjs --output "$tmp"
# drop the source-map link (it points at the full file's map)
sed '/sourceMappingURL/d' "$tmp/bootstrap.min.css" > assets/css/bootstrap.purged.min.css
rm -r "$tmp"
echo "assets/css/bootstrap.purged.min.css: $(wc -c < assets/css/bootstrap.purged.min.css) bytes"
