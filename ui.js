(() => {
  'use strict';
  window.Beehave.toast = (message) => {
    const stack = document.getElementById('toastStack');
    if (!stack) return;
    const toast = document.createElement('div');
    toast.className = 'web-toast';
    const content = document.createElement('div');
    const title = document.createElement('strong');
    title.textContent = 'Beehave Corp';
    const text = document.createElement('p');
    text.className = 'muted';
    text.textContent = message;
    content.append(title, text);
    toast.append(content);
    stack.append(toast);
    setTimeout(() => toast.remove(), 3600);
  };
  document.querySelectorAll('[data-toast]').forEach(button => button.addEventListener('click', () => Beehave.toast(button.dataset.toast)));
})();
