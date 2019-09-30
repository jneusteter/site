<template>
  <div class="flex flex-col m-3">
    <div
      class="flex flex-col md:flex-row shadow-lg p-3 my-5 border-l-4 border-solid border-purple-800 rounded-sm"
    >
      <img
        class="shadow m-auto md:m-0"
        src="/img/cadence.jpg"
        alt="Cadence Neusteter"
      />
      <div class="p-6">
        <h1 class="font-normal text-4xl">Cadence Neusteter</h1>
        <a href="https://www.swimming.ca/en/swimmer/4900749/" target="_blank"
          >Swimming Canada Profile</a
        >
      </div>
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

      const sorted = distances.sort((a, b) => {
        return a - b
      })
      return [...new Set(sorted)]
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
