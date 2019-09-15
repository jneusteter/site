<template>
  <div class="container">
    <div class="center">
      <h1 class="title">jneusteter</h1>
      <ul>
        <li><a href="#">tech</a></li>
        <li><a href="#">photography</a></li>
        <li><a href="http://twitter.com/jneusteter">contact</a></li>
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
a {
  text-decoration: none;
  color: #888888;
}
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
