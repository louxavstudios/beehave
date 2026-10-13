(() => {
  'use strict';
  const form = document.getElementById('appearanceForm');
  function populate() {
    const preferences = Beehave.get();
    for (const name of ['highContrast', 'reducedMotion', 'textures']) document.getElementById(name).checked = preferences[name];
    document.getElementById('iconSize').value = preferences.iconSize;
  }
  function save(preferences) {
    const saved = Beehave.save(preferences);
    document.getElementById('appearanceStatus').textContent = saved ? 'Settings saved.' : 'Your browser could not save settings.';
    if (saved) populate();
  }
  form.addEventListener('submit', event => {
    event.preventDefault();
    save({ highContrast: document.getElementById('highContrast').checked, reducedMotion: document.getElementById('reducedMotion').checked, textures: document.getElementById('textures').checked, iconSize: document.getElementById('iconSize').value });
  });
  document.getElementById('restoreAppearance').addEventListener('click', () => save(Beehave.defaults));
  document.getElementById('resetLayout').addEventListener('click', () => {
    const saved = Beehave.write(Beehave.keys.order, []);
    document.getElementById('layoutStatus').textContent = saved ? 'Default app order restored.' : 'Your browser could not reset the app order.';
  });
  window.addEventListener('storage', populate);
  populate();
})();
