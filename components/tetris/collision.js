export default {
  computed: {
    leftCollisionBlocks() {
      return this.restingBlocks.map((block) => block.index + 1)
    },
    leftEdgeBlocks() {
      const array = [0]
      while (array[array.length - 1] < this.numberOfBlocks) {
        array.push(array[array.length - 1] + this.blocksWide)
      }
      return array
    },
    allLeftCollisionBlocks() {
      return [...this.leftCollisionBlocks, ...this.leftEdgeBlocks]
    },
    rightCollisionBlocks() {
      return this.restingBlocks.map((block) => block.index - 1)
    },
    rightEdgeBlocks() {
      return this.leftEdgeBlocks.map((item) => item + this.blocksWide - 1)
    },
    allRightCollisionBlocks() {
      return [...this.rightCollisionBlocks, ...this.rightEdgeBlocks]
    },
    bottomCollisionBlocks() {
      return this.restingBlocks.map((block) => {
        return block.index - this.blocksWide
      })
    },
    bottomRow() {
      let number = this.numberOfBlocks - this.blocksWide
      const array = []
      while (number <= this.numberOfBlocks) {
        array.push(number)
        number++
      }
      return array
    },
    allBottomCollisionBlocks() {
      return [...this.bottomCollisionBlocks, ...this.bottomRow]
    }
  },
  methods: {
    isSmashing(blocks) {
      const isColiding = this.currentRotation.map((item) =>
        blocks.includes(item)
      )
      return isColiding.some((item) => item === true)
    }
  }
}
