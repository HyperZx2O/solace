// Token set: apps/landing/app/flowstate.css :root, exactly as shipped.
// Keys are the CSS variable names (unique, flat). Any landing change to :root
// must be反射ed here and both outputs regenerated + committed.
const TOKENS = require('./tokens.json');
const KEYS = Object.keys(TOKENS).filter((k) => k !== 'meta');

function toArgbHex(value) {
  const rgba = value.match(/rgba?\(\s*(\d+)\s*,\s*(\d+)\s*,\s*(\d+)\s*(?:,\s*([\d.]+)\s*)?\)/);
  if (rgba) {
    const [, r, g, b, a] = rgba;
    const alpha = a === undefined ? 0xff : Math.round(parseFloat(a) * 0xff);
    const to2 = (n) => Number(n).toString(16).padStart(2, '0');
    return ['0x', to2(alpha), to2(r), to2(g), to2(b)].join('').toUpperCase();
  }
  const hex = value.match(/^#([0-9a-f]{6})$/i);
  if (hex) return '0xFF' + hex[1].toUpperCase();
  throw new Error(`Unhandled colour format: ${value}`);
}

const cssFlat = {
  name: 'between/css-flat',
  format: () => {
    const lines = KEYS.map((k) => {
      const t = TOKENS[k];
      let value = t?.$value;
      if (t?.$type === 'cubicBezier') {
        value = `cubic-bezier(${t.$value.join(', ')})`;
      }
      return `  --${k}: ${value ?? '<missing>'};`;
    });
    return `/* GENERATED from tokens.json — do not edit. */\n:root {\n${lines.join('\n')}\n}\n`;
  },
};

const dart = {
  name: 'between/dart',
  format: () => {
    const parts = [];
    parts.push('// GENERATED from packages/design-tokens/tokens.json — do not edit.');
    parts.push('// Regenerate: npm run build (packages/design-tokens).');
    parts.push("import 'package:flutter/animation.dart';\n");
    parts.push('// ignore_for_file: constant_identifier_names');
    parts.push('/// Edge margin. Fixed 16dp per F-ADR-5 (web `clamp(1rem, 2.2vw, 2rem)` stays web-only).');
    parts.push('const double gutter = 16.0;');
    for (const key of KEYS) {
      const t = TOKENS[key];
      const dartName = key.replaceAll('-', '_');
      switch (t?.$type) {
        case 'color':
          parts.push(`const Color ${dartName} = Color(${toArgbHex(t.$value)});`);
          break;
        case 'duration':
          parts.push(`const Duration ${dartName} = Duration(milliseconds: ${t.$value.replace('ms', '')});`);
          break;
        case 'cubicBezier': {
          const [a, b, c, d] = t.$value;
          parts.push(`const Cubic ${dartName} = Cubic(${a}, ${b}, ${c}, ${d});`);
          break;
        }
        case 'dimension':
          break; // gutter, emitted above
        default:
          throw new Error(`No Dart mapping for token: ${key}`);
      }
    }
    return parts.join('\n') + '\n';
  },
};

module.exports = { cssFlat, dart, KEYS, toArgbHex };
