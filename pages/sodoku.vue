<template>
  <div class="grid mt-20 mx-20">
    <div
      v-for="(item, index) in 81"
      :key="index"
      class="block"
      :class="{ bottom: bottomBorder(index), right: rightBorder(index) }"
    >
      <strong>
        {{ number(index) }}
      </strong>
    </div>
  </div>
</template>

<script>
export default {
  layout: 'index',
  data() {
    return {
      data: []
    }
  },
  computed: {
    threeByThree() {
      return [
        [0, 1, 2, 9, 10, 11, 18, 19, 20],
        [3, 4, 5, 12, 13, 14, 21, 22, 23],
        [6, 7, 8, 15, 16, 17, 24, 25, 26],
        [27, 28, 29, 36, 37, 38, 45, 46, 47],
        [30, 31, 32, 39, 40, 41, 48, 49, 50],
        [33, 34, 35, 42, 43, 44, 51, 52, 53],
        [54, 55, 56, 63, 64, 65, 72, 73, 74],
        [57, 58, 59, 66, 67, 68, 75, 76, 77],
        [60, 61, 62, 69, 70, 71, 78, 79, 80]
      ]
    },
    columns() {
      const columns = [[0, 9, 18, 27, 36, 45, 54, 63, 72]]
      let count = 0
      while (count < 8) {
        columns.push(columns[columns.length - 1].map((item) => item + 1))
        count++
      }
      return columns
    },
    rows() {
      const rows = [[0, 1, 2, 3, 4, 5, 6, 7, 8]]
      let count = 0
      while (count < 8) {
        rows.push(rows[rows.length - 1].map((item) => item + 9))
        count++
      }
      return rows
    }
  },
  created() {
    let count = 0
    while (count < 10) {
      this.data.push({ index: this.randomBlock(), number: this.randomNumber() })
      count++
    }
  },
  methods: {
    bottomBorder(index) {
      return [...this.rows[2], ...this.rows[5]].includes(index)
    },
    rightBorder(index) {
      return [...this.columns[2], ...this.columns[5]].includes(index)
    },
    number(index) {
      return this.data.find((item) => item.index === index)?.number
    },
    randomNumber() {
      return Math.floor(Math.random() * 10)
    },
    randomBlock() {
      return Math.floor(Math.random() * 81)
    }
  }
}
</script>

<style scoped>
.grid {
  display: flex;
  flex-wrap: wrap;
  width: 360px;
  height: 360px;
  background-color: cyan;
}

.block {
  border: 1px white solid;
  width: 40px;
  height: 40px;
}

.bottom {
  border-bottom: 1px solid #000;
}

.right {
  border-right: 1px solid black;
}
</style>
