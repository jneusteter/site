<template>
  <div>
    <div class="text-2xl text-white">Price Per Drink</div>
    <fancy-input v-model="ml" ref="ml" prepend="ml" class="mb-1" />
    <input
      class="rounded mb-1 p-1"
      type="number"
      v-model="qty"
      placeholder="qty"
    />
    <input class="rounded mb-1 p-1" type="text" v-model="abv" />
    <div class="text-white">
      Price Per Drink: ${{ price.toFixed(2) }}
      <br />
      Standard Drinks:
      {{ standardDrinks.toFixed(2) }}
    </div>
  </div>
</template>

<script>
import FancyInput from './FancyInput.vue'
export default {
  components: { FancyInput },
  data() {
    return {
      ml: null,
      qty: 0,
      abv: 0
    }
  },
  mounted() {
    this.$refs.ml.$el.focus()
  },
  computed: {
    price() {
      return this.ml * this.qty
    },
    standardDrinks() {
      if (!this.ml) return 0
      const amount = (this.ml / 1000) * this.abv * 0.789
      return this.qty ? amount * this.qty : amount
    }
  }
}
</script>
