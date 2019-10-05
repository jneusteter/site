<template>
  <div class="flex flex-col m-3">
    <ChildHeaderCard left-border="border-orange-600" name="Shane Neusteter">
      <template v-slot:image>
        <ImageSlider :images="images" />
      </template>
      <template v-slot:titles>
        <h1 class="font-normal text-4xl">Shane Neusteter</h1>
      </template>
      <template v-slot:youtube>
        <iframe
          width="560"
          height="315"
          src="https://www.youtube.com/embed/oruq6TEnCrw"
          frameborder="0"
          allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        >
        </iframe>
      </template>
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
