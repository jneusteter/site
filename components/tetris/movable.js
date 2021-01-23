export default {
  methods: {
    controls(e) {
      if (e.keyCode === 38) this.rotate()
      if (e.keyCode === 37) this.moveLeft()
      if (e.keyCode === 39) this.moveRight(1)
      if (e.keyCode === 40) this.drop()
    },
    rotate() {
      this.$store.commit('tetris/setRotation')
      this.draw(this.currentRotation)
    },
    moveLeft() {
      if (!this.isSmashing(this.allLeftCollisionBlocks)) this.move(-1)
    },
    moveRight() {
      if (!this.isSmashing(this.allRightCollisionBlocks)) this.move(1)
    },
    drop() {
      while (!this.isSmashing(this.allBottomCollisionBlocks)) {
        this.move(this.blocksWide)
        this.draw(this.currentRotation)
      }
    },
    move(n) {
      this.$store.commit(
        'tetris/setTetromino',
        this.currentTetromino.map((rotation) => {
          return rotation.map((position) => {
            return position + n
          })
        })
      )
      this.draw(this.currentRotation)
    }
  }
}
