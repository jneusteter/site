export const state = () => ({
  blockSize: 30,
  restingBlocks: [],
  currentTetromino: [],
  rotation: 0
})

export const getters = {
  currentRotation(state) {
    return state.currentTetromino[state.rotation]
  }
}

export const mutations = {
  deleteRestingBlock(state, index) {
    const newBlocks = state.restingBlocks.filter(
      (block) => block.index !== index
    )
    state.restingBlocks = newBlocks
  },
  setRestingBlock(state, data) {
    const block = state.restingBlocks.find(
      (block) => block.index === data.index
    )
    if (block) {
      block.colour = data.colour
    } else {
      state.restingBlocks.push({ index: data.index, colour: data.colour })
    }
  },
  dropRestingBlock(state, index) {
    const block = state.restingBlocks.find((block) => block.index === index)
    if (block) {
      block.index = block.index + 11
    }
  },
  setTetromino(state, tetromino) {
    state.currentTetromino = tetromino
  },
  setRotation(state) {
    state.rotation === 3 ? (state.rotation = 0) : state.rotation++
  }
}
