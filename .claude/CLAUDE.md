# evemed.pl: maintenance notes

## Bootstrap is trimmed: regenerate it when you use a new Bootstrap class

The site does not load the theme's full Bootstrap. `_includes/head.html` loads
`/assets/css/bootstrap.purged.min.css`: Bootstrap 4.3.1 with every class the site doesn't use
removed (156 KB → 33.5 KB, 23 KB → 7.2 KB compressed). This was done for mobile page speed:
Bootstrap was the largest stylesheet that blocks the first render.

**When a page, include or `_data` file starts using a Bootstrap class the site didn't use
before** (for example `.badge`, `.alert-success`, a new grid or spacing utility), run:

```sh
./_tools/purge-bootstrap.sh
```

then check the affected pages and commit the regenerated `assets/css/bootstrap.purged.min.css`.
If you skip this, the new class has no styling and nothing warns you.

- Run it from the repo folder with Node 20 (`asdf` pins it there; other folders may pick an older Node).
- The script builds the site and keeps only the rules used by the built pages (`_site/**/*.html`)
  or by the site's JavaScript (`_site/assets/js/*.js`), so classes that scripts add at runtime
  (`show`, `collapsing`, `navbar-shrink`…) survive.
- If new inline JavaScript toggles Bootstrap classes by name, add them to the `safelist` in
  `_tools/purgecss.config.cjs`.
- The script reads the theme's full `_site/assets/css/bootstrap.min.css`. Never save the trimmed
  output under that name, or later runs can't bring removed classes back.
