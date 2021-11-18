<template>
  <div id="app">
    <h1>Teorema de Pitagoras</h1>
    <Cards/>
    <hr>
    <Claculando/>
  </div>
</template>

<script>
import Claculando from './components/Calculando.vue'
import Cards from './components/Cards.vue'
export default {
components: {Claculando, Cards}
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
h2{
  text-align: left;
}

</style>
