<template>
  <div class="starry-sky">
    <div class="stars">
      <div v-for="i in 200" :key="i" class="star" :style="getStarPosition()"></div>
    </div>
    <div class="moon"></div>
  </div>
</template>

<script>
export default {
  methods: {
    getStarPosition() {
      // Random position for each star to make it look natural
      const top = Math.random() * 100;
      const left = Math.random() * 100;
      const animationDuration = Math.random() * (2 - 1) + 1 + 's'; // Random duration for twinkling animation

      return {
        top: `${top}vh`,
        left: `${left}vw`,
        animationDuration
      };
    }
  }
};
</script>

<style scoped>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  height: 100vh;
  overflow: hidden;
  background-color: #001d36;
}

.starry-sky {
  position: relative;
  height: 100%;
}

.stars {
  position: absolute;
  width: 100%;
  height: 100%;
}

.star {
  position: absolute;
  width: 2px;
  height: 2px;
  background-color: white;
  border-radius: 50%;
  opacity: 0;
  animation: twinkle 1s infinite alternate;
}

@keyframes twinkle {
  0% {
    opacity: 0.5;
  }
  100% {
    opacity: 1;
  }
}

.moon {
  position: absolute;
  top: 15%;
  left: 75%;
  width: 100px;
  height: 100px;
  background-color: #f0e68c;
  border-radius: 50%;
  box-shadow: 0 0 50px rgba(255, 255, 255, 0.6);
}
</style>
