<template>
  <tr class="">
    <td class="p-1">{{ item.name }}</td>
    <td>{{ item.ml }}</td>
    <td>{{ item.type }}</td>
    <td>{{ standardDrinks }}</td>
    <td>${{ pricePerDrink.toFixed(2) }}</td>
  </tr>
</template>

<script>
export default {
  props: {
    item: {
      type: Object,
      required: true
    }
  },
  computed: {
    standardDrinks() {
      return (this.item.ml / 1000) * this.item.abv * 0.789
    },
    pricePerDrink() {
      return this.item.price / this.standardDrinks
    }
  }
}
</script>
