import Vue from 'vue'

Vue.component('image-modal', require('./components/ImageModal.vue').default)

const app = new Vue({
  el: '#app'
})
