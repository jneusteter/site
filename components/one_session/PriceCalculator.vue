<template>
  <div class="flex flex-col gap-y-1 bg-gradient-to-br">
    <div class="text-2xl text-white">Price Per Drink</div>

    <div class="flex gap-x-1 justify-center">
      <div class="flex">
        <div class="bg-gray-600 text-gray-400 p-2 rounded-l-md">$/Drink</div>
        <div class="bg-yellow-400 p-2 rounded-r-md">
          ${{ pricePerDrink.toFixed(2) }}
        </div>
      </div>

      <div class="flex">
        <div class="bg-yellow-400 p-2 rounded-l-md">
          {{ standardDrinks.toFixed(2) }}
        </div>
        <div class="bg-gray-600 text-gray-400 p-2 rounded-r-md">QTY</div>
      </div>
    </div>

    <fancy-input v-model="ml" @clear="ml = ''" ref="ml" prepend="Volume" />
    <fancy-input v-model="qty" prepend="QTY" @clear="qty = 1" />
    <fancy-input v-model="abv" prepend="ABV" @clear="abv = ''" />
    <fancy-input v-model="price" prepend="Price" @clear="price = ''" />
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
  },
  methods: {
    clearMl() {
      this.ml = ''
    }
  }
}
</script>
