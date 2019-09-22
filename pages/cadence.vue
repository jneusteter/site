<template>
  <div class="container">
    <h1>Cadence Neusteter</h1>
    <hr />
    <div>
      <img src="/img/cadence.jpg" alt="Cadence Neusteter" />
    </div>
    <div v-for="style in styles" :key="style.id">
      <div v-for="distance in distances" :key="distance.id">
        <SwimTimeTable :events="events(distance, style, 25)" />
        <SwimTimeTable :events="events(distance, style, 50)" />
      </div>
    </div>
  </div>
</template>

<script>
import swimEvents from '../components/data/cadence_swim_events.json'
import SwimTimeTable from '../components/SwimTimeTable.vue'

export default {
  components: {
    SwimTimeTable
  },
  data() {
    return {
      cadenceSwimEvents: swimEvents
    }
  },
  computed: {
    styles() {
      const styles = []
      this.cadenceSwimEvents.forEach((event) => {
        styles.push(event.style)
      })
      return [...new Set(styles)]
    },
    distances() {
      const distances = []
      this.cadenceSwimEvents.forEach((event) => {
        distances.push(event.distance)
      })
      return [...new Set(distances)]
    }
  },
  methods: {
    events(distance, style, course) {
      const array = this.cadenceSwimEvents.filter(
        (event) =>
          event.style === style &&
          event.distance === distance &&
          event.course === course
      )
      return array.sort((a, b) => {
        return new Date(b.date) - new Date(a.date)
      })
    }
  }
}
</script>

<style scoped>
hr {
  height: 0.8rem;
  border: 0rem;
  width: 100%;
  box-shadow: 0 10px 10px -10px #ac32e4 inset;
}
</style>
