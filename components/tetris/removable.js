export default {
  computed: {
    numberOfRows() {
      return this.numberOfBlocks / this.blocksWide
    },
    firstRow() {
      let count = 0
      const row = []
      while (count < this.blocksWide) {
        row.push(count)
        count++
      }
      return row
    },
    allRows() {
      let count = 1
      const array = [this.firstRow]
      while (count < this.numberOfRows) {
        const lastRow = array[array.length - 1]
        const newRow = lastRow.map((item) => item + this.blocksWide)
        array.push(newRow)
        count++
      }
      return array
    }
  },
  methods: {
    removeFullRows() {
      this.allRows.forEach((row, index) => {
        if (this.isFullRow(row)) {
          this.deleteRow(index)
          this.dropRows(index)
        }
      })
    },
    isFullRow(row) {
      const blocks = row.map((index) => {
        return this.restingBlocks.find((block) => block.index === index)
      })
      if (blocks.some((block) => block === undefined)) return false
      return blocks.every((block) => block.colour !== '')
    },
    deleteRow(index) {
      const row = this.allRows[index]
      row.forEach((item) => {
        this.$store.commit('tetris/deleteRestingBlock', item)
      })
    },
    dropRows(index) {
      const rows = this.allRows.slice(0, index)
      rows.forEach((row) => {
        row.forEach((block) =>
          this.$store.commit('tetris/dropRestingBlock', block)
        )
      })
    }
  }
}
