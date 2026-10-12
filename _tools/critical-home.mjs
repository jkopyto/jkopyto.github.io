// Extracts the CSS the home page needs for its first screen (navbar, hero, cookie banner).
// Run through _tools/critical-css.sh, which installs `critical` in a temp folder and serves the built site.
import { generate } from 'critical';

const [site, url] = process.argv.slice(2);
const { css } = await generate({
  src: url,
  css: [`${site}/assets/css/bootstrap.purged.min.css`, `${site}/assets/css/agency.css`],
  // one size per Bootstrap breakpoint (xs/sm/md/lg/xl) plus common phones and a wide desktop
  dimensions: [
    { width: 360, height: 740 }, { width: 414, height: 896 }, { width: 600, height: 960 },
    { width: 800, height: 1100 }, { width: 1024, height: 768 }, { width: 1280, height: 800 }, { width: 1920, height: 1080 },
  ],
  inline: false,
  // always included:
  // - the cookie banner: shown by JS ~1 s after load, possibly before the full CSS arrives
  // - grid columns: without their padding, rows lower on the page overflow the screen until the full CSS arrives
  penthouse: { timeout: 90000, forceInclude: [/\.cookie-/, /^\.col(-|$)/] },
});
// make asset URLs absolute ("../x" from /assets/css/, or "assets/x" as critical rebases them) so they work inlined anywhere
process.stdout.write(css.replace(/url\((['"]?)(?:\.\.\/|assets\/)/g, 'url($1/assets/') + '\n');
