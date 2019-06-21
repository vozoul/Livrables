import '@babel/polyfill'
import Vue from 'vue'
import './plugins/bootstrap-vue'
import App from './App.vue'
import VueRouter from 'vue-router'
import Hello from './components/Hello'
import BootstrapVue from 'bootstrap-vue'
import * as VueGoogleMaps from 'vue2-google-maps'
import HelloWorld from './components/HelloWorld'
import Supplier from './components/Supplier'
import SuppliersListe from './components/SuppliersListe'
import SuppliersMaps from './components/SuppliersMaps'

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

Vue.config.productionTip = false

Vue.use(VueRouter)
Vue.use(BootstrapVue)
Vue.use(VueGoogleMaps, {
    load: {
        key: 'AIzaSyB_rUFcZii_mHfRgddtI0e_lgK6cQj7fG4',
        libraries: 'places',
    },
})

const router = new VueRouter({
  mode: 'history',
  routes: [
      {path: "/", component: HelloWorld, meta: {msg: "Welcome to Your Vue.js App"}},
      {path: "/supplier", component: SuppliersListe},
      {path: "/liste", component: SuppliersListe},
      {path: "/map", component: SuppliersMaps},
      {path: "/hello", component: Hello},
  ],
})

new Vue({
  router,
  render: h => h(App),
}).$mount('#app')
