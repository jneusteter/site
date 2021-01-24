<template>
  <div class="container flex flex-col m-3">
    <ChildHeaderCard left-border="border-purple-800">
      <template #image>
        <ImageSlider :images="images" />
      </template>
      <template #titles>
        <h1 class="font-normal text-4xl">Cadence Neusteter</h1>
        <a href="https://www.swimming.ca/en/swimmer/4900749/" target="_blank">
          Swimming Canada Profile
        </a>
      </template>
    </ChildHeaderCard>
    <div v-for="style in styles" :key="style.id">
      <div v-for="distance in distances" :key="distance.id" class="flex">
        <h2>{{ style }}</h2>
        <SwimTimeTable :events="events(distance, style, 25)" />
        <SwimTimeTable :events="events(distance, style, 50)" />
      </div>
    </div>
  </div>
</template>

<script>
import swimEvents from '../components/data/cadence_swim_events.json'
import SwimTimeTable from '../components/profile/SwimTimeTable.vue'
import ChildHeaderCard from '../components/profile/ChildHeaderCard.vue'
import ImageSlider from '../components/profile/ImageSlider.vue'

export default {
  components: {
    SwimTimeTable,
    ChildHeaderCard,
    ImageSlider
  },
  data() {
    return {
      cadenceSwimEvents: swimEvents,
      images: ['/img/cadence.jpg']
    }
  },
  computed: {
    styles() {
      const styles = this.cadenceSwimEvents.map((event) => {
        return event.style
      })
      return [...new Set(styles)]
    },
    distances() {
      const distances = this.cadenceSwimEvents
        .map((event) => {
          return event.distance
        })
        .sort((a, b) => {
          return a - b
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
