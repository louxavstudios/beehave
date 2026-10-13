(() => {
  'use strict';
  const keys = { preferences: 'beehave.preferences', order: 'beehave.desktopOrder' };
  const defaults = { highContrast: false, reducedMotion: false, textures: true, iconSize: 'normal' };
  const read = (key, fallback) => {
    try { return JSON.parse(localStorage.getItem(key)) ?? fallback; } catch { return fallback; }
  };
  const write = (key, value) => {
    try { localStorage.setItem(key, JSON.stringify(value)); return true; } catch { return false; }
  };
  function normalize(value) {
    const input = value && typeof value === 'object' ? value : {};
    return {
      highContrast: input.highContrast === true,
      reducedMotion: input.reducedMotion === true,
      textures: input.textures !== false,
      iconSize: ['compact', 'normal', 'large'].includes(input.iconSize) ? input.iconSize : 'normal'
    };
  }
  const get = () => normalize(read(keys.preferences, defaults));
  function apply() {
    const preferences = get();
    document.documentElement.classList.toggle('reduced-motion', preferences.reducedMotion);
    document.body?.classList.toggle('high-contrast', preferences.highContrast);
    document.body?.classList.toggle('no-textures', !preferences.textures);
    const [cell, icon] = { compact: [120, 48], normal: [140, 64], large: [164, 80] }[preferences.iconSize];
    document.documentElement.style.setProperty('--desktop-cell', `${cell}px`);
    document.documentElement.style.setProperty('--desktop-icon', `${icon}px`);
  }
  window.Beehave = { keys, defaults, read, write, get, apply, save(value) {
    const saved = write(keys.preferences, normalize(value));
    if (saved) apply();
    return saved;
  } };
  apply();
  document.addEventListener('DOMContentLoaded', apply);
  window.addEventListener('storage', apply);
})();
