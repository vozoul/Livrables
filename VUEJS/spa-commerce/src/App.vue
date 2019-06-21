<template>
  <div id="app">
    <div>
      <router-link to="/" tag="button">Accueil</router-link>
      <img alt="Vue logo" src="./assets/logo.png">
      <router-link to="/supplier" tag="button">liste des fournisseurs</router-link>
      <router-link to="/map" tag="button">Localisation fournisseurs</router-link>
      <router-link to="/hello" tag="button" first-name="Vince" from="Madrid" image="img/logo.png" last-name="VDK"> hello </router-link>
      <hello to="/hello" tag="button" first-name="Vince" from="Madrid" image="img/logo.png" last-name="VDK"> hello </hello>
    </div>
    <!--<img alt="Vue logo" src="./assets/logo.png">-->
    <router-view></router-view>
  </div>
</template>

<script>
  import Hello from './components/Hello'

export default {
  name: 'app',
  components:{
    Hello,
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  /*margin-top: 60px;*/
}
  #header {
    background: #bababa;
    box-shadow: 0 0 15px #0f0f0f;
  }
</style>
