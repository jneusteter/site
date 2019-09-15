<template>
  <div class="container">
    <h1>Cadence Neusteter</h1>
    <div>
      <img src="/img/cadence.jpg" alt="Cadence Neusteter" />
    </div>
    <div>
      <div v-for="time in cadenceSwimTimes" :key="time.id">{{ time }}</div>
    </div>
  </div>
</template>

<script>
import SwimTimes from '../components/data/cadence_swim_times.json'
export default {
  data() {
    return {
      cadenceSwimTimes: SwimTimes
    }
  }
}
</script>

<style scoped>
.container {
  display: flex;
  flex-direction: column;
}
</style>
