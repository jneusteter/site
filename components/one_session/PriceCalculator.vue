<template>
  <div class="flex flex-col gap-y-1 bg-gradient-to-br">
    <div class="text-2xl text-white">Price Per Drink</div>
    <fancy-input v-model="ml" ref="ml" prepend="ml" />
    <fancy-input v-model="qty" prepend="QTY" />
    <fancy-input v-model="abv" prepend="ABV" />
    <fancy-input v-model="price" prepend="Price" />

    <div class="text-white">
      Price Per Drink: ${{ pricePerDrink.toFixed(2) }}
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
      qty: 1,
      abv: 0,
      price: 0
    }
  },
  mounted() {
    this.$refs.ml.$el.focus()
  },
  computed: {
    pricePerDrink() {
      const price = this.price / this.standardDrinks
      return price ? price : 0.0
    },
    standardDrinks() {
      return ((this.ml * this.qty) / 1000) * this.abv * 0.789
    }
  }
}
</script>
