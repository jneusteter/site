export default {
  mounted() {
    window.addEventListener('keydown', this.controls)
    this.populateBlocks()
    this.nextTetrominoe()
    this.draw(this.currentRotation)
    this.start()
  },
  methods: {
    populateBlocks() {
      let count = 0
      while (count < this.numberOfBlocks) {
        this.blocks.push({ colour: 'white' })
        count++
      }
    }
  }
}
