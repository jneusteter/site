<template>
  <div class="flex">
    <span
      :class="`${pendColours} ${pendBorders} inline-flex items-center px-3 text-sm`"
    >
      {{ prepend }}
    </span>
    <input
      ref="input"
      :class="inputClasses"
      :value="value"
      @input="$emit('input', $event.target.value)"
      type="number"
      placeholder="ml"
    />
    <span
      :class="`${pendColours} border border-r-0 rounded-r-md inline-flex items-center px-3`"
      @click="clear()"
    >
      Clear
    </span>
  </div>
</template>

<script>
export default {
  props: {
    value: {
      type: [String, Number],
      default: ''
    },
    prepend: {
      type: String,
      default: ''
    }
  },
  computed: {
    inputClasses() {
      return `bg-gray-700 text-white \
        border-gray-600 focus:border-blue-500 focus:ring-blue-500 \
        w-full \
        p-2.5`
    },
    pendColours() {
      return 'border-gray-600 text-gray-400 bg-gray-600'
    },
    pendBorders() {
      return 'border border-r-0 rounded-l-md'
    }
  },
  methods: {
    clear() {
      this.$emit('clear')
      this.$refs.input.focus()
    }
  }
}
</script>
