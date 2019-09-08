<template>
  <div>
    <div v-for="time in cadenceSwimTimes" :key="time.id">{{ time }}</div>
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
