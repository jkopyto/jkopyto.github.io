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
Afterwards run `./_tools/critical-css.sh` too (next section): the home page inlines part of Bootstrap.

- Run it from the repo folder with Node 20 (`asdf` pins it there; other folders may pick an older Node).
- The script builds the site and keeps only the rules used by the built pages (`_site/**/*.html`)
  or by the site's JavaScript (`_site/assets/js/*.js`), so classes that scripts add at runtime
  (`show`, `collapsing`, `navbar-shrink`…) survive.
- If new inline JavaScript toggles Bootstrap classes by name, add them to the `safelist` in
  `_tools/purgecss.config.cjs`.
- The script reads the theme's full `_site/assets/css/bootstrap.min.css`. Never save the trimmed
  output under that name, or later runs can't bring removed classes back.

## Home page inlines its first-screen CSS: regenerate it when those styles change

On the home page only, `_includes/head.html` inlines `_includes/critical-home.css` (the rules for the navbar,
hero and cookie banner, about 4.5 KB compressed) and loads `bootstrap.purged.min.css` and `agency.css` in the
background. No stylesheet blocks the first paint: in a mobile Lighthouse test this cut FCP and LCP by
about 0.8 s. Other pages load the stylesheets normally.

**After changing styles that affect the navbar, hero or cookie banner** (`_sass/layout/_masthead.scss`,
`_navbar.scss`, `_buttons.scss`, `_cookie.scss`, fonts, colours in `_data/style.yml`), and after running
`_tools/purge-bootstrap.sh`, run:

```sh
./_tools/critical-css.sh
```

then open the home page and commit the regenerated `_includes/critical-home.css`. If you skip this, the home
page first appears with the old styles and then changes when the full CSS arrives.

- It builds the site with `_tools/critical-off.yml` (normal stylesheets), serves it locally and runs the
  `critical` npm package in your installed Chrome at 7 screen sizes (every Bootstrap breakpoint).
  It needs Node 20 and Chrome; `npm` installs `critical` into a temporary folder.
- Cookie-banner rules and grid columns (`.col-*`) are always included (`_tools/critical-home.mjs`): the
  banner appears before the full CSS may arrive, and rows lower on the page overflow the screen without
  column padding.

## Local builds and fonts

Body text uses the system font stack. Local Jekyll 4 merges the remote theme's `_data/style.yml`, whose
`fonts:` list would make body text "Roboto Slab" locally only (GitHub Pages' Jekyll 3 doesn't merge theme
data). `assets/css/agency.scss` pins `body-font` after that loop so local and live CSS match; keep it there.
Web fonts are self-hosted (`_sass/base/_fonts.scss`, files in `assets/fonts/`).
