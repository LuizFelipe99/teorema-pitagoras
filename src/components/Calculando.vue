<template>
  <div id="calculando">
    <div class="texts card">
      <h3>Cateto Adjacente</h3>
      <input class="catetos" type="text" v-model="catA" >
      <h3>Cateto Oposto</h3>
      <input class="catetos" type="text" v-model="catO"><br>
      <button class="calcularbtn" @click="calcular" > Calcular </button>
      <button class="limparbtn" @click="limpar" > Limpar </button>
      <div class="resultado">
        <p v-if="hip != 0 " >
          Sua Hipotenusa é -> <b class="valor">{{ hip }}</b>
        </p>
        <p v-else> Informe algum valor </p>     
      </div>
    </div>

    <div class="rascunho">
      <p>h² = a² * b²</p>
      <p>h² = {{(catA*catA).toFixed(2)}}  x  {{ (catO*catO).toFixed(2) }} </p>
      <p>h² = {{(catA*catA).toFixed(2) + (catO*catO).toFixed(2)}} </p>
      <p>h = RAIZ({{(catA*catA).toFixed(2) + (catO*catO).toFixed(2)}})</p>
      <p>{{this.hip}}</p>
    </div>
    
  </div>
  
</template>

<script>
export default {

  //formula de pitagoras 
  // h^2 = catAdjacente^2 + catOposto^2
  data(){
    return{
      //cateto adjacente 
      catA: 0,
      //cateto oposto
      catO: 0,
      //hipotenusa
      hip: 0,
    }
  },
  methods: {
    calcular(){

      this.hip =  Math.hypot(this.catA, this.catO).toFixed(3);
    },
    limpar(){
      this.catA = 0
      this.catO = 0
      this.hip = 0
    },
  }
}
</script>

<style>
#calculando{
  display: flex;
  justify-content: center;
  align-content: center;
}
.catetos{
  font-size: 30px;
  color: green;
  margin: 5px 5px 5px 5px;
  text-align: center;
  width:50%;
}
.card{
  font-size: 24px;
  box-shadow: 0 8px 8px 0 rgb(47, 151, 236);
  width: 50%;
  background-color: rgb(147, 196, 236);
  border-radius: 10px;
}
.calcularbtn{
  font-size: 24px;
  text-align: center;
  margin-right: 5px;
}
.limparbtn{
  font-size: 24px;
  text-align: center;
}
.valor{
  color: red;
  font-size: 28px;
  font-weight: bold;
}
.rascunho{
  margin-left: 10px;
  text-align: left;
  background-color: rgb(226, 149, 149);
  box-shadow: 0 8px 8px 0 rgba(223, 25, 25, 0.7);
  border-radius: 10px;
  height: 10%;
  width: 25%;
  padding: 5px;
}
input{
 border-radius: 10px;
 border: 0 none;
 outline: 0;
  
}

</style>
