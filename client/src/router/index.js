import Vue from 'vue'
import VueRouter from 'vue-router'
// import HomeView from '../views/HomeView.vue'
import Homepage from '@/page/Homepage.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '',
    component: Homepage,
    children: [
      {
        path: '',
        component: () => import('@/views/HomeView.vue'),
      },
      {
        path: '/intro',
        component: () => import('@/views/IntroView.vue'),
      },
      {
        path: '/exerciseStore',
        component: () => import('../views/exerciseStore.vue'),
      },
      {
        path: '/exercise/:id',
        component: () => import('../views/Exercise.vue'),
      },
    ],
  },


  // {
  //   path: '/',
  //   name: 'home',
  //   component: HomeView
  // },
  {
    path: '/login',
    name: 'login',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/login.vue')
  },

  {
    path: '/create',
    name: 'create',
    component: () => import('../views/CreateAccount.vue')
  },
  {
    path: '/intro',
    name: 'intro',
    component: () => import('../views/IntroView.vue')
  },
  {
    path: '/main',
    name: 'main',
    component: () => import('../views/MainView.vue')
  },


  // {
  //   path: '/header',
  //   name: 'header',
  //   component: () => import('../components/HeaderView.vue')
  // },

  {
    path: '/listGymmer',
    name: 'listGymmer',
    component: () => import('../views/AdminView/ListGymmerView.vue')
  },
  {
    path: '/listpt',
    name: 'listpt',
    component: () => import('../views/AdminView/ListPtView.vue')
  },
  {
    path: '/listExercise',
    name: 'listExercise',
    component: () => import('../views/AdminView/ListExerciseView.vue')
  },
  {
    path: '/AddExercise',
    name: '/AddExercise',
    component: () => import('../views/AdminView/AddExercise.vue')
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
