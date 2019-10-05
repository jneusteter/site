<template>
  <div class="flex flex-col m-3">
    <ChildHeaderCard left-border="border-orange-600" name="Shane Neusteter">
      <template v-slot:image>
        <ImageSlider :images="images" />
      </template>
      <template v-slot:titles>
        <h1 class="font-normal text-4xl">Shane Neusteter</h1>
        <h3 class="font-normal text-2xl underline">Awards</h3>
        <ul>
          <li>AMHA Most Outstanding Defensemen 2017</li>
          <li>AMHA Most Outstanding Defensemen 2018</li>
          <li>AMHA Best Player Pound for Pound 2019</li>
        </ul>
      </template>
      <template v-slot:youtube></template>
    </ChildHeaderCard>
  </div>
</template>

<script>
import ChildHeaderCard from '../components/ChildHeaderCard.vue'
import ImageSlider from '../components/ImageSlider.vue'

export default {
  components: {
    ChildHeaderCard,
    ImageSlider
  },
  data() {
    return {
      images: ['/img/shane2018_300.jpg']
    }
  }
}
</script>
