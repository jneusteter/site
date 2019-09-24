<template>
  <div v-if="eventsExist">
    <h2 class="text-3xl m-2">
      {{ `${events[0].distance}M ${events[0].style} (${course})` }}
    </h2>
    <table class="shadow">
      <thead>
        <th class="text-left p-3 border-b-2 border-solid border-purple-500">
          Meet
        </th>
        <th class="text-left p-3 border-b-2 border-solid border-purple-500">
          Date
        </th>
        <th class="text-left p-3 border-b-2 border-solid border-purple-500">
          Time
        </th>
        <th class="text-left p-3 border-b-2 border-solid border-purple-500">
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
export default {
  props: {
    events: {
      type: Array,
      required: true
    }
  },
  data() {
    return {
      bottomBorder: 'border-b-2 border-solid border-purple-300 p-3'
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
    }
  }
}
</script>
