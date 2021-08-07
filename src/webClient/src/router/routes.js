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
	{path: '/legal_entity', component: () => import(`../app/components/legal_entity/index.vue`), props: true},
	{path: '/legal_entity/:id', component: () => import(`../app/components/legal_entity/item.vue`), props: true},
  // Always leave this as last one,
  // but you can also remove it
  {
    path: '/:catchAll(.*)*',
    component: () => import('../app/components/error404.vue')
  }
]


export default routes
