<template>
  <div
    :class="[
      'flex flex-col md:flex-row card shadow-lg p-3 my-5 border-l-4 border-solid rounded-sm',
      leftBorder
    ]"
  >
    <slot name="image"></slot>
    <div class="p-6">
      <slot name="titles"></slot>
    </div>
    <slot name="youtube"></slot>
  </div>
</template>

<script>
export default {
  props: {
    leftBorder: {
      type: String,
      default: ''
    },
    name: {
      type: String,
      default: ''
    }
  }
}
</script>

<style scoped>
.card {
  height: 400px;
}
</style>
