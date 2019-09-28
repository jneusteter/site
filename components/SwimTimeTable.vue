<template>
  <div v-if="eventsExist" class="shadow my-6 bg-purple-100 rounded-lg">
    <h2 class="p-3 text-3xl m-2">
      {{ tableTitle }}
      <span class="text-sm underline">
        R:{{ qualifier(events[0].style, course, events[0].distance) }}
      </span>
    </h2>
    <table class="bg-white max-w-full">
      <thead>
        <th :class="[bottomHeaderBorder]">
          Meet
        </th>
        <th :class="[bottomHeaderBorder]">
          Date
        </th>
        <th :class="[bottomHeaderBorder]">
          Time
        </th>
        <th :class="[bottomHeaderBorder]">
          Position
        </th>
      </thead>
      <tbody>
        <tr v-for="event in events" :key="event.time">
          <td :class="[bottomCellBorder]">{{ event.meet }}</td>
          <td :class="[bottomCellBorder]">{{ event.date }}</td>
          <td :class="[bottomCellBorder]">{{ event.time }}</td>
          <td :class="[bottomCellBorder]">{{ event.pos }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import _ from 'lodash'
import qualifyingTimes from './data/swim_qualifying_times.js'

export default {
  props: {
    events: {
      type: Array,
      required: true
    }
  },
  data() {
    return {
      bottomCellBorder: 'border-b-2 border-solid border-purple-300 p-3',
      bottomHeaderBorder:
        'text-left p-3 border-b-2 border-solid border-purple-600',
      qualifyingTimes
    }
  },
  computed: {
    eventsExist() {
      if (this.events.length === 0) {
        return false
      } else {
        return true
      }
    },
    course() {
      if (this.events[0].course === 25) {
        return 'SC'
      } else {
        return 'LC'
      }
    },
    tableTitle() {
      const style = _.capitalize(this.events[0].style)
      return `${this.events[0].distance}M ${style} (${this.course})`
    }
  },
  methods: {
    qualifier(style, course, distance) {
      return this.qualifyingTimes[style][course][distance]
    }
  }
}
</script>
