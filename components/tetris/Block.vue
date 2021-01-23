<template>
  <div
    :class="['block', colour]"
    :style="{ width: width, height: height }"
  ></div>
</template>

<script>
export default {
  props: {
    index: {
      type: Number,
      required: true
    }
  },
  computed: {
    colour() {
      if (this.restingBlock) return this.restingBlock.colour
      if (this.currentRotation.includes(this.index)) {
        return 'black'
      } else {
        return 'white'
      }
    },
    currentRotation() {
      return this.$store.getters['tetris/currentRotation']
    },
    restingBlocks() {
      return this.$store.state.tetris.restingBlocks
    },
    restingBlock() {
      return this.restingBlocks.find((block) => {
        return block.index === this.index
      })
    },
    blockSize() {
      return this.$store.state.tetris.blockSize
    },
    width() {
      return `${this.blockSize}px`
    },
    height() {
      return `${this.blockSize}px`
    }
  }
}
</script>

<style scoped>
.white {
  background-color: white;
}

.black {
  background-color: black;
}

.block {
  color: black;
}
</style>
