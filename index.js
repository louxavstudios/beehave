(() => {
  'use strict';
  const desktop = document.getElementById('desktop');
  const menu = document.getElementById('contextMenu');
  const tooltip = document.getElementById('appTooltip');
  const banner = document.getElementById('customizeBanner');
  let customizing = false;
  let dragged = null;
  let tooltipTimer;
  const hideTooltip = () => { clearTimeout(tooltipTimer); tooltip.hidden = true; };
  function setCustomize(enabled) {
    customizing = enabled;
    document.body.classList.toggle('customizing', enabled);
    banner.hidden = !enabled;
    menu.hidden = true;
    hideTooltip();
    desktop.querySelectorAll('.app-icon').forEach(item => {
      item.draggable = enabled;
      item.querySelector('.reorder-actions').hidden = !enabled;
    });
    document.getElementById('customizeDesktop').setAttribute('aria-pressed', String(enabled));
  }
  function saveOrder() {
    const names = [...desktop.querySelectorAll('.app-icon')].map(item => item.dataset.name);
    if (!Beehave.write(Beehave.keys.order, names)) Beehave.toast('Your browser could not save the desktop order.');
  }
  function showTooltip(app, element) {
    hideTooltip();
    if (customizing) return;
    tooltipTimer = setTimeout(() => {
      tooltip.textContent = app.description;
      tooltip.hidden = false;
      const rect = element.getBoundingClientRect();
      tooltip.style.left = `${Math.max(12, Math.min(rect.left, innerWidth - tooltip.offsetWidth - 12))}px`;
      tooltip.style.top = `${Math.max(12, Math.min(rect.bottom + 8, innerHeight - tooltip.offsetHeight - 12))}px`;
    }, 350);
  }
  function createApp(app) {
    const item = document.createElement('div');
    item.className = 'app-icon';
    item.dataset.name = app.name;
    item.style.setProperty('--app-accent', app.accent);
    const link = document.createElement('a');
    link.className = 'app-launch';
    link.href = app.path;
    link.draggable = false;
    link.title = app.description;
    const frame = document.createElement('span');
    frame.className = 'icon-img';
    const image = document.createElement('img');
    image.src = app.icon;
    image.alt = '';
    image.draggable = false;
    frame.append(image);
    const name = document.createElement('span');
    name.className = 'app-name';
    name.textContent = app.long_name;
    link.append(frame, name);
    const actions = document.createElement('div');
    actions.className = 'reorder-actions';
    actions.hidden = true;
    for (const direction of [-1, 1]) {
      const button = document.createElement('button');
      button.type = 'button';
      button.className = 'mc-button';
      button.textContent = direction < 0 ? '←' : '→';
      button.setAttribute('aria-label', `Move ${app.long_name} ${direction < 0 ? 'earlier' : 'later'}`);
      button.addEventListener('click', () => {
        const neighbor = direction < 0 ? item.previousElementSibling : item.nextElementSibling;
        if (!neighbor) return;
        if (direction < 0) desktop.insertBefore(item, neighbor);
        else desktop.insertBefore(neighbor, item);
        saveOrder();
        button.focus();
      });
      actions.append(button);
    }
    item.append(link, actions);
    link.addEventListener('mouseenter', () => showTooltip(app, item));
    link.addEventListener('mouseleave', hideTooltip);
    link.addEventListener('focus', () => showTooltip(app, item));
    link.addEventListener('blur', hideTooltip);
    link.addEventListener('click', event => {
      if (customizing) { event.preventDefault(); return; }
      if (event.ctrlKey || event.metaKey || event.shiftKey || event.altKey || event.button !== 0) return;
      event.preventDefault();
      hideTooltip();
      desktop.querySelectorAll('.selected').forEach(element => element.classList.remove('selected'));
      item.classList.add('selected');
      document.getElementById('loadingText').textContent = `Opening ${app.long_name}…`;
      document.getElementById('loadingScreen').hidden = false;
      setTimeout(() => location.assign(link.href), Beehave.get().reducedMotion ? 0 : 160);
    });
    return item;
  }
  async function loadApps() {
    try {
      const response = await fetch('manifest.json');
      if (!response.ok) throw new Error('Manifest unavailable');
      const manifest = await response.json();
      const apps = manifest.apps;
      if (!Array.isArray(apps) || !apps.length) throw new Error('No apps available');
      const saved = Beehave.read(Beehave.keys.order, []);
      const order = Array.isArray(saved) ? [...new Set(saved.filter(name => typeof name === 'string'))] : [];
      const ordered = [...order.map(name => apps.find(app => app.name === name)).filter(Boolean), ...apps.filter(app => !order.includes(app.name))];
      desktop.replaceChildren(...ordered.map(createApp));
    } catch {
      const status = document.getElementById('desktopStatus');
      status.textContent = 'Apps could not load. Open Beehave through a local web server and reload.';
      const link = document.createElement('a');
      link.href = 'settings/';
      link.textContent = 'Open settings';
      desktop.append(link);
    }
  }
  desktop.addEventListener('dragstart', event => {
    if (!customizing) { event.preventDefault(); return; }
    dragged = event.target.closest('.app-icon');
    if (!dragged) return;
    event.dataTransfer.setData('text/plain', dragged.dataset.name);
    event.dataTransfer.effectAllowed = 'move';
    dragged.classList.add('dragging');
  });
  desktop.addEventListener('dragover', event => {
    if (!dragged) return;
    event.preventDefault();
    const target = event.target.closest('.app-icon');
    if (!target || target === dragged) return;
    const items = [...desktop.children];
    desktop.insertBefore(dragged, items.indexOf(dragged) < items.indexOf(target) ? target.nextSibling : target);
  });
  desktop.addEventListener('drop', event => { if (dragged) { event.preventDefault(); saveOrder(); } });
  desktop.addEventListener('dragend', () => { dragged?.classList.remove('dragging'); dragged = null; saveOrder(); });
  desktop.addEventListener('contextmenu', event => {
    event.preventDefault();
    hideTooltip();
    menu.hidden = false;
    menu.style.left = `${Math.max(0, Math.min(event.clientX, innerWidth - menu.offsetWidth - 8))}px`;
    menu.style.top = `${Math.max(0, Math.min(event.clientY, innerHeight - menu.offsetHeight - 8))}px`;
    menu.querySelector('button').focus();
  });
  document.addEventListener('pointerdown', event => { if (!menu.contains(event.target)) menu.hidden = true; });
  document.getElementById('menuCustomize').addEventListener('click', () => setCustomize(true));
  document.getElementById('customizeDesktop').addEventListener('click', () => setCustomize(!customizing));
  document.getElementById('doneCustomize').addEventListener('click', () => { setCustomize(false); document.getElementById('customizeDesktop').focus(); });
  document.addEventListener('keydown', event => { if (event.key === 'Escape') { setCustomize(false); menu.hidden = true; hideTooltip(); } });
  window.addEventListener('pageshow', () => { document.getElementById('loadingScreen').hidden = true; });
  window.addEventListener('resize', hideTooltip);
  window.addEventListener('scroll', hideTooltip);
  loadApps();
})();
