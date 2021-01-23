export default {
  data() {
    return {
      blocksWide: 11,
      blocksHigh: 20
    }
  },
  computed: {
    gridWidth() {
      return `${this.blocksWide * this.$store.state.tetris.blockSize}px`
    },
    gridHeight() {
      return `${this.blocksWide * this.$store.state.tetris.blocksWide}px`
    },
    numberOfBlocks() {
      return this.blocksWide * this.blocksHigh
    },
    restingBlocks() {
      return this.$store.state.tetris.restingBlocks
    }
  }
}
