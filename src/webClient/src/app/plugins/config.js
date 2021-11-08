export default {
  appName: 'Rozetki',
  uiAppName: 'Rozetki',
  apiUrl: () => process.env.NODE_ENV === 'development' ? 'http://localhost:3101' : 'https://example.ru',
  wsUrl: () => process.env.NODE_ENV === 'development' ? 'ws://localhost:3101' : 'wss://example.ru',
  isEmailAuth: {
    firstName: true,
    lastName: true,
  },
  logoSrc: 'https://d29fhpw069ctt2.cloudfront.net/clipart/106632/preview/powersocket_preview_1715.png',
  dadataToken: '1cf3a086e3dbe1306ed142d2b5fbc1b324b8eb60',
  // yandexMetrikaId: 54433825,
  breadcrumbIcons: {
    price_group: 'far fa-file-alt',
discount_group: 'far fa-file-alt',
product_type: 'far fa-file-alt',
color: 'far fa-file-alt',
brand: 'far fa-file-alt',
serie: 'far fa-file-alt',
product: 'far fa-file-alt',
product_serie_link: 'far fa-file-alt',
customer: 'far fa-file-alt'
  },
  
  tablesForTask: {},
}
