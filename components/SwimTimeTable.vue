<template>
  <div>
    <span v-if="eventsExist">
      <h2>
        {{ `${events[0].distance}M ${events[0].style} (${course})` }}
      </h2>
      <div class="table-container">
        <table>
          <thead>
            <th>Meet</th>
            <th>Date</th>
            <th>Time</th>
            <th>Position</th>
          </thead>
          <tbody>
            <tr v-for="event in events" :key="event.time">
              <td>{{ event.meet }}</td>
              <td>{{ event.date }}</td>
              <td>{{ event.time }}</td>
              <td>{{ event.pos }}</td>
            </tr>
          </tbody>
        </table>
      </div>
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
.table-container {
  background: linear-gradient(-68deg, #ac32e4, #4801ff);
  border-radius: .1rem;
  font-family: sans-serif;
}
table {
  width: 100%;
  border-collapse: collapse;
  color: white;
}
th {
  background-color: rbga(255,255,255,0.32);
  text-transform: uppercase;
  padding-top: 1.2rem;
  padding-bottom: 1.2rem;
}
td {
  padding: 0.5rem;
}
tr:hover {
  background: rbga(255,255,255,0.1);
}
/* table, td, th {
  border: 1px solid black;
} */
</style>
