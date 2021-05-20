import Vue from 'vue'
import VueRouter from 'vue-router'
import ShowBook from '../views/ShowBook'
import AddBook from '../views/AddBook'
import UpdateBook from '../views/UpdateBook'
import PageFour from "../views/PageFour";
import Index from '../views/Index.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: '图书管理',
    component: Index,
    redirect: '/ShowBook',
    children: [
      {
        path: '/ShowBook',
        name: '查询图书',
        component: ShowBook
      },
      {
        path: '/AddBook',
        name: '添加图书',
        component: AddBook
      }
    ]
  },
  {
    path: '/update',
    name: '更新',
    component: UpdateBook
  },

  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
