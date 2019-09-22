<template>
  <div>
    <span v-if="eventsExist">
      <h2>
        {{ `${events[0].distance}M ${events[0].style} (${course})` }}
      </h2>
      <table class="shadow">
        <thead>
          <th>Meet</th>
          <th>Date</th>
          <th>Time</th>
          <th>Position</th>
        </thead>
        <tbody>
          <tr v-for="event in events" :key="event.time">
            <td class="border-l-4 border-solid border-purple-800">
              {{ event.meet }}
            </td>
            <td>{{ event.date }}</td>
            <td>{{ event.time }}</td>
            <td>{{ event.pos }}</td>
          </tr>
        </tbody>
      </table>
    </span>
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

<style lang="css" scoped>
table {
  width: 100%;
  background: #fff;
  border-spacing: 0px;
}
th {
  text-transform: uppercase;
  height: 56px;
}
tr {
  height: 48px;
  padding: 0;
  border-bottom-width: 1px;
  border-bottom-style: solid;
}
td {
  padding-left: 24px;
  border-bottom-width: 1px;
  border-bottom-style: solid;
  border-bottom-color: rgba(0,0,0,.12);
}
</style>
