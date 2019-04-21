<template>
  <div>
    <a :href="imgPath">
      <img :src="src" :alt="alt">
    </a>
  </div>
</template>

<script>
export default {
  props: {
    imgPath: {
      type: String,
      required: true
    },
    src: {
      type: String,
      required: true
    },
    alt: {
      type: String,
      required: true
    }
  }
}
</script>
