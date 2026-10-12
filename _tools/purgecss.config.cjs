// PurgeCSS config for _tools/purge-bootstrap.sh — see that script for when to run it.
module.exports = {
  // the theme's full Bootstrap 4.3.1, copied into _site by jekyll-remote-theme
  css: ['_site/assets/css/bootstrap.min.css'],
  content: [
    '_site/**/*.html',
    // classes that Bootstrap and the theme add at runtime (show, collapsing, navbar-shrink, modal-open…)
    '_site/assets/js/*.js',
  ],
  // the cookie banner/modal and inline scripts toggle classes by name; keep anything they could add
  safelist: { standard: [/^show$/, /^collaps/, /^active$/, /^disabled$/, /^fade$/, /^modal/, /^was-validated$/, /^is-(in)?valid$/] },
}
