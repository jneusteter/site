<template>
  <div v-if="eventsExist">
    <h2 class="text-3xl m-2">
      {{ tableTitle }}
      <span class="text-sm underline">
        R:{{ qualifier(events[0].style, course, events[0].distance) }}
      </span>
    </h2>
    <table class="shadow">
      <thead>
        <th class="text-left p-3 border-b-2 border-solid border-purple-600">
          Meet
        </th>
        <th class="text-left p-3 border-b-2 border-solid border-purple-600">
          Date
        </th>
        <th class="text-left p-3 border-b-2 border-solid border-purple-600">
          Time
        </th>
        <th class="text-left p-3 border-b-2 border-solid border-purple-600">
          Position
        </th>
      </thead>
      <tbody>
        <tr v-for="event in events" :key="event.time">
          <td :class="[bottomBorder]">{{ event.meet }}</td>
          <td :class="[bottomBorder]">{{ event.date }}</td>
          <td :class="[bottomBorder]">{{ event.time }}</td>
          <td :class="[bottomBorder]">{{ event.pos }}</td>
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
      bottomBorder: 'border-b-2 border-solid border-purple-300 p-3',
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
