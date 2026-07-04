self.addEventListener('install', (e) => {
  self.skipWaiting();
});

self.addEventListener('fetch', (e) => {
  // Ignora caches locais para forçar o download dos gráficos em tempo real direto da rede
  e.respondWith(fetch(e.request));
});
