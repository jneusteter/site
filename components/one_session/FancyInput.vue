<template>
  <div class="flex">
    <span
      :class="`${prependColours} ${prependBorders} inline-flex items-center px-3 text-sm`"
    >
      {{ prepend }}
    </span>
    <input
      :class="`${inputColours} rounded-none rounded-r-lg p-2.5`"
      :value="value"
      @input="$emit('input', $event.target.value)"
      type="number"
      placeholder="ml"
    />
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
    inputColours() {
      return 'bg-gray-700 \
        border-gray-600 focus:border-blue-500 focus:ring-blue-500 \
        text-white'
    },
    prependColours() {
      return 'border-gray-600 text-gray-400 bg-gray-600'
    },
    prependBorders() {
      return 'border border-r-0 rounded-l-md'
    }
  }
}
</script>
