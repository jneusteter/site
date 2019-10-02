<template>
  <div class="flex flex-col m-3">
    <ChildHeaderCard left-border="border-orange-600" name="Shane Neusteter">
      <template v-slot:image></template>
    </ChildHeaderCard>
  </div>
</template>

<script>
import ChildHeaderCard from '../components/ChildHeaderCard.vue'
export default {
  components: {
    ChildHeaderCard
  }
}
</script>
