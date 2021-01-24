<template>
  <div class="width">
    <transition-group name="fade" tag="div">
      <div v-for="number in [currentNumber]" :key="number">
        <img
          class="shadow m-auto md:m-0"
          :src="currentImage"
          alt=""
          width="300"
          @mouseover="stopRotation"
          @mouseout="startRotation"
        />
      </div>
    </transition-group>
  </div>
</template>

<script>
export default {
  props: {
    images: {
      type: Array,
      default: null
    }
  },
  data() {
    return {
      currentNumber: 0,
      timer: null
    }
  },
  computed: {
    currentImage() {
      return this.images[Math.abs(this.currentNumber) % this.images.length]
    }
  },
  mounted() {
    this.startRotation()
  },
  methods: {
    startRotation() {
      if (this.images.length > 1) {
        this.timer = setInterval(this.next, 7000)
      }
    },
    stopRotation() {
      clearTimeout(this.timer)
      this.timer = null
    },
    next() {
      this.currentNumber += 1
    },
    prev() {
      this.currentNumber -= 1
    }
  }
}
</script>

<style>
.fade-enter-active,
.fade-leave-active {
  transition: all 4s ease;
  overflow: hidden;
  visibility: visible;
  opacity: 1;
  position: absolute;
}
.fade-enter,
.fade-leave-to {
  opacity: 0;
  visibility: hidden;
}
.width {
  width: 300px;
}
</style>
