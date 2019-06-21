import Vue from 'vue'
import App from './App.vue'
import VueRouter from 'vue-router'
import BootstrapVue from 'bootstrap-vue'
import * as VueGoogleMaps from 'vue2-google-maps'
import SupplierList from './components/SupplierList.vue'
import SupplierMap from './components/SupplierMap.vue'
import HelloWorld from './components/HelloWorld.vue'

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

Vue.use(VueRouter)
Vue.use(BootstrapVue)
Vue.use(VueGoogleMaps, {
  load: {
    key: 'AIzaSyB_rUFcZii_mHfRgddtI0e_lgK6cQj7fG4',
    libraries: 'places',
    region: 'FR',
    language: 'fr',
  },
})

const router = new VueRouter({
  mode: 'history',
  routes:[
    {path: '/', component: HelloWorld, name: 'Index'},
    {path: '/List', component: SupplierList, name: 'Liste'},
    {path: '/Map', component: SupplierMap, name: 'Map'},
  ]
})

Vue.config.productionTip = false

new Vue({
  router,
  render: h => h(App),
}).$mount('#app')
