<template>
  <div id="app">
    <img alt="Vue feniks" src="./assets/feniks.png" />
    <router-view/>
  </div>
</template>

<script>
import HelloWorld from "./components/HelloWorld.vue";
import Login from "./components/Login.vue";

export default {
  name: "app",
  components: {
    HelloWorld,
    Login
  }
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
