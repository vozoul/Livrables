<template>
    <div id="app" class="m-0 p-0">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <router-link to="/" class="navbar-brand">
                <img src="./assets/logo.png" width="30" height="30" class="d-inline-block align-top" alt="Vue logo">
                VueJs
            </router-link>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <router-link to="/List" class="nav-link">Liste</router-link>
                    </li>
                    <li class="nav-item">
                        <router-link to="/Map" class="nav-link">Map</router-link>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li>{{ $route.name }}</li>
                </ul>
            </div>
        </nav>
        <!--<img alt="Vue logo" src="./assets/logo.png">-->
        <!--<HelloWorld msg="Welcome to Your Vue.js App"/>-->
        <router-view></router-view>
    </div>
</template>

<script>
    export default {
        name: 'app',
    }
</script>

<style>
    #app {
        font-family: 'Avenir', Helvetica, Arial, sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        text-align: center;
        color: #2c3e50;
        margin-top: 60px;
    }
</style>
