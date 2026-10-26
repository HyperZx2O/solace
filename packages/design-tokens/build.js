// Build script for the Between design tokens.
// Run: npm run build  (inside packages/design-tokens)
// Outputs:
//   dist/tokens.css                            — flat CSS custom properties (drop-in for flowstate.css :root)
//   ../../apps/mobile/lib/design/tokens.g.dart — generated Dart constants (committed)
async function build() {
  const StyleDictionary = require('style-dictionary').default;
  const SD = StyleDictionary ?? require('style-dictionary');
  const { cssFlat, dart } = require('./formats');
  const sd = typeof SD === 'function'
    ? new SD({
        source: ['tokens.json'],
        platforms: {
          css: {
            buildPath: 'dist/',
            files: [{ destination: 'tokens.css', format: 'between/css-flat' }],
          },
          dart: {
            buildPath: '../../apps/mobile/lib/design/',
            files: [{ destination: 'tokens.g.dart', format: 'between/dart' }],
          },
        },
      })
    : SD;
  if (typeof sd.registerFormat !== 'function') {
    throw new Error('No registerFormat API found; check installed style-dictionary version.');
  }
  sd.registerFormat(cssFlat);
  sd.registerFormat(dart);
  await sd.buildAllPlatforms();
}

module.exports = { build };

if (require.main === module) {
  build().catch((e) => {
    console.error(e);
    process.exitCode = 1;
  });
}
