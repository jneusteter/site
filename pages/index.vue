<template>
  <div class="container">
    <div class="center">
      <h1 class="title">jneusteter</h1>
      <ul>
        <li>tech</li>
        <li>photography</li>
        <li>contact</li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  layout: 'index',
  head: {
    title: 'Home of jneusteter'
  }
}
</script>

<style lang="css" scoped>
.container {
  display: flex;
  flex-direction: column;
  align-items: center;
}
.center {
  margin-top: 30vh;
}
ul {
  list-style-type: none;
}
li {
  display: inline;
}
</style>
