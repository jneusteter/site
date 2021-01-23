export default {
  computed: {
    currentTetromino() {
      return this.$store.state.tetris.currentTetromino
    },
    currentRotation() {
      return this.$store.getters['tetris/currentRotation']
    },
    theTetrominoes() {
      return [this.t, this.i, this.l, this.z, this.o]
    },
    t() {
      const x = this.blocksWide
      return [
        [1, x, x + 1, x + 2],
        [1, x + 1, x + 2, x * 2 + 1],
        [x, x + 1, x + 2, x * 2 + 1],
        [1, x, x + 1, x * 2 + 1]
      ]
    },
    i() {
      const x = this.blocksWide
      return [
        [1, x + 1, x * 2 + 1, x * 3 + 1],
        [x, x + 1, x + 2, x + 3],
        [1, x + 1, x * 2 + 1, x * 3 + 1],
        [x, x + 1, x + 2, x + 3]
      ]
    },
    o() {
      const x = this.blocksWide
      return [
        [0, 1, x, x + 1],
        [0, 1, x, x + 1],
        [0, 1, x, x + 1],
        [0, 1, x, x + 1]
      ]
    },
    z() {
      const x = this.blocksWide
      return [
        [0, x, x + 1, x * 2 + 1],
        [x, x + 1, x * 2 + 1, x * 2 + 2],
        [0, x, x + 1, x * 2 + 1],
        [x + 1, x + 2, x * 2, x * 2 + 1]
      ]
    },
    l() {
      const x = this.blocksWide
      return [
        [1, x + 1, x * 2 + 1, 2],
        [x, x + 1, x + 2, x * 2 + 2],
        [1, x + 1, x * 2 + 1, x * 2],
        [x, x * 2, x * 2 + 1, x * 2 + 2]
      ]
    }
  },
  methods: {
    nextTetrominoe() {
      this.$store.commit(
        'tetris/setTetromino',
        this.theTetrominoes[this.random(this.theTetrominoes.length)]
      )
    }
  }
}
