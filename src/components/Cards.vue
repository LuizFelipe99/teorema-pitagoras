<template>
<div class="box">
  <!-- card sobre o teorema -->
  <div class="">
      <div class="flip-card">
          <div class="flip-card-inner">
              <div class="flip-card-front">
              Teorema de Pitagoras
              </div>
              <div class="flip-card-back">
              <p>
              Os estudos trigonométricos possuem uma relação muito importante com o Teorema de Pitágoras, 
              pois através de sua aplicação determinamos valores de medidas desconhecidas. O teorema de Pitágoras 
              é uma expressão que pode ser aplicada em qualquer triângulo retângulo (triângulo que tem um ângulo 
              de 90°).
              </p>
              </div>
          </div>
      </div> 
  </div>
<!-- card mostrando um triangulo retangulo -->
    <div>
      <div class="flip-card">
          <div class="flip-card-inner">
              <div class="flip-card-front">
              Triângulo Retângulo
              </div>
              <div class="flip-card-back">
              <img src="../assets/triangulo.png">
              </div>
          </div>
      </div> 
  </div>

<!-- card tal -->
    <div>
      <div class="flip-card">
          <div class="flip-card-inner">
              <div class="flip-card-front">
              Grande Pitágoras
              </div>
              <div class="flip-card-back">
                <img src="../assets/pitagoras.webp">
              </div>
          </div>
      </div> 
  </div>

<!-- card tal -->
    <div >
      <div class="flip-card">
          <div class="flip-card-inner">
              <div class="flip-card-front">
              Formula 
              </div>
              <div class="flip-card-back">
                <h1>
                h² = a² * b²
                </h1>
              </div>
          </div>
      </div> 
  </div>
  
</div>
</template>

<script>
export default {


}
</script>

<style>
.flip-card {
  background-color: transparent;
  width: 300px;
  height: 200px;
  border: 1px solid #f1f1f1;
  perspective: 1000px; /* Remove this if you don't want the 3D effect */
}

/* This container is needed to position the front and back side */
.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

/* Do an horizontal flip when you move the mouse over the flip box container */
.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

/* Position the front and back side */
.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden; /* Safari */
  backface-visibility: hidden;
}

/* Style the front side (fallback if image is missing) */
.flip-card-front {
  background-color: rgb(147, 196, 236);
  color: black;
  justify-content: center;
  align-items: center;
  display: flex;
  border-radius: 5px;
  box-shadow: 0 8px 8px 0 rgb(47, 151, 236);
  


}

/* Style the back side */
.flip-card-back {
  background-color: rgb(110, 176, 241);
  color: white;
  transform: rotateY(180deg);
  color: black;
  font-weight: bold;
  border-radius: 10px;
}

.box {
  display: flex;
  flex-wrap: wrap;
  align-content: space-between;
}
img{
  width: 100%;
  height: 100%;
}

</style>
