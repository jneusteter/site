<template>
  <div class="p-3">
    <price-calculator />
    <table style="display: none">
      <tr>
        <th>Name:</th>
        <th>Type:</th>
        <th>ml</th>
        <th>Price</th>
        <th>ABV</th>
      </tr>
      <table-row
        v-for="item in items"
        :item="item"
        :key="`${item.name}${item.ml}`"
      />
    </table>
  </div>
</template>

<script>
import { sortBy } from 'lodash'
import TableRow from '../components/one_session/TableRow.vue'
import PriceCalculator from '../components/one_session/PriceCalculator.vue'
import oneSession from '../components/data/one_session.js'

export default {
  components: { TableRow, PriceCalculator },
  layout: 'index',
  computed: {
    items() {
      return sortBy(oneSession, 'name')
    }
  }
}
</script>
