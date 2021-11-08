const routes = [
  {path: '/', component: () => import(`../app/components/home.vue`)},
  {
    path: '/check_user_email',
    component: () => import(`../app/components/auth/email/checkUserEmail.vue`),
  },
  {
    path: '/email_auth_recover_password',
    component: () => import(`../app/components/auth/email/emailAuthRecoverPassword.vue`),
  },
  {path: '/users', component: () => import(`../app/components/users/index.vue`)},
  {path: '/users/:id', component: () => import(`../app/components/users/item.vue`), props: true},
  {path: '/profile', component: () => import(`../app/components/currentUser/profile.vue`)},
  // for codeGenerate ##routes_slot1
	{path: '/price_group', component: () => import(`../app/components/price_group/index.vue`), props: true},
	{path: '/price_group/:id', component: () => import(`../app/components/price_group/item.vue`), props: true},
	{path: '/discount_group', component: () => import(`../app/components/discount_group/index.vue`), props: true},
	{path: '/discount_group/:id', component: () => import(`../app/components/discount_group/item.vue`), props: true},
	{path: '/product_type', component: () => import(`../app/components/product_type/index.vue`), props: true},
	{path: '/product_type/:id', component: () => import(`../app/components/product_type/item.vue`), props: true},
	{path: '/color', component: () => import(`../app/components/color/index.vue`), props: true},
	{path: '/color/:id', component: () => import(`../app/components/color/item.vue`), props: true},
	{path: '/brand', component: () => import(`../app/components/brand/index.vue`), props: true},
	{path: '/brand/:id', component: () => import(`../app/components/brand/item.vue`), props: true},
	{path: '/serie', component: () => import(`../app/components/serie/index.vue`), props: true},
	{path: '/serie/:id', component: () => import(`../app/components/serie/item.vue`), props: true},
	{path: '/product', component: () => import(`../app/components/product/index.vue`), props: true},
	{path: '/product/:id', component: () => import(`../app/components/product/item.vue`), props: true},
	{path: '/product_serie_link', component: () => import(`../app/components/product_serie_link/index.vue`), props: true},
	{path: '/product_serie_link/:id', component: () => import(`../app/components/product_serie_link/item.vue`), props: true},
	{path: '/customer', component: () => import(`../app/components/customer/index.vue`), props: true},
	{path: '/customer/:id', component: () => import(`../app/components/customer/item.vue`), props: true},
  // Always leave this as last one,
  // but you can also remove it
  {
    path: '/:catchAll(.*)*',
    component: () => import('../app/components/error404.vue')
  }
]


export default routes
