import { defineNuxtConfig } from '@nuxt/bridge'

export default defineNuxtConfig({
  target: 'static',
  ssr: false,
  head: {
    title: 'jneusteter.ca',
    htmlAttrs: {
      lang: 'en'
    },
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: '' }
    ],
    link: [{ rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }]
  },
  css: ['@/assets/css/main.css'],
  plugins: [],
  components: true,
  buildModules: ['@nuxtjs/tailwindcss'],
  modules: ['@nuxtjs/axios'],
  axios: {},
  build: {}
})
