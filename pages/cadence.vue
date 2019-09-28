<template>
  <div class="container mx-auto flex-col">
    <div
      class="flex shadow-lg p-3 my-5 border-l-4 border-solid border-purple-800"
    >
      <img class="shadow" src="/img/cadence.jpg" alt="Cadence Neusteter" />
      <h1 class="font-normal text-3xl p-4">Cadence Neusteter</h1>
    </div>
    <div v-for="style in styles" :key="style.id">
      <div
        v-for="distance in distances"
        :key="distance.id"
        class="flex justify-around"
      >
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
