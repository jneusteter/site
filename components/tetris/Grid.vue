<template>
  <div class="grid" :style="{ width: gridWidth, height: gridHeight }">
    <block v-for="(block, index) in blocks" :key="index" :index="index" />
  </div>
</template>

<script>
import init from './init.js'
import collision from './collision.js'
import layout from './layout.js'
import movable from './movable.js'
import removable from './removable.js'
import tetrominoes from './tetrominoes.js'

export default {
  mixins: [init, collision, layout, movable, removable, tetrominoes],
  data() {
    return {
      blocks: [],
      speed: 1000
    }
  },
  computed: {
    restingBlocks() {
      return this.$store.state.tetris.restingBlocks
    }
  },
  methods: {
    start() {
      setInterval(() => {
        if (this.isSmashing(this.allBottomCollisionBlocks)) {
          this.restTetromino()
          this.removeFullRows()
          this.nextTetrominoe()
        } else {
          this.move(this.blocksWide)
        }

        this.draw(this.currentRotation)
      }, this.speed)
    },
    restTetromino() {
      this.currentRotation.forEach((block) =>
        this.$store.commit('tetris/setRestingBlock', {
          index: block,
          colour: 'black'
        })
      )
    },
    random(range) {
      return Math.floor(Math.random() * range)
    },
    draw(tetromino) {
      this.blocks.forEach((block) => (block.colour = ''))
      tetromino.forEach((position) => (this.blocks[position].colour = 'black'))
    }
  }
}
</script>

<style scoped>
.grid {
  background-color: white;
  display: flex;
  flex-wrap: wrap;
}
</style>
