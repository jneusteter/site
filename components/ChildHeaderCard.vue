<template>
  <div
    :class="[
      'flex flex-col md:flex-row shadow-lg p-3 my-5 border-l-4 border-solid rounded-sm',
      leftBorder
    ]"
  >
    <slot name="image"></slot>
    <div class="p-6">
      <h1 class="font-normal text-4xl">{{ name }}</h1>
      <a href="https://www.swimming.ca/en/swimmer/4900749/" target="_blank"
        >Swimming Canada Profile</a
      >
    </div>
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
