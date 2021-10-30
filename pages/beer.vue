<template>
  <div class="font-sans">
    <div class="font-bold text-gray-200 text-center mt-3">
      Current Status: 0.08%
    </div>

    <div class="bg-gray-200 mt-3" style="height: 300px; width: 100%">
      <canvas ref="chart"></canvas>
    </div>

    <div class="mt-3">
      <button class="bg-gray-300 rounded p-2">Add</button>
    </div>
  </div>
</template>

<script>
export default {
  layout: 'index'
}
</script>
