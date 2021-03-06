import Vue from 'vue/dist/vue.esm.js'
import VueRouter from 'vue-router'
import Login from '../../components/login_form'

Vue.use(VueRouter)

export default new VueRouter({
    mode: 'history',
    routes: [
      {path: '/login', component: Login}
    ],
})