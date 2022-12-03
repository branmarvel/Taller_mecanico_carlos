/* eslint-disable import/order */
import '@/@iconify/icons-bundle'
import App from '@/App.vue'
import axios from "@/plugins/axios"
import vuetify from '@/plugins/vuetify'
import { loadFonts } from '@/plugins/webfontloader'
import router from '@/router'
import '@/styles/styles.scss'
import '@core/scss/index.scss'
import { createPinia } from 'pinia'
import { createApp } from 'vue'
import VueAxios from "vue-axios"
loadFonts()
const app = createApp(App)
app.use(vuetify)
app.use(createPinia())
app.use(router)
app.mount('#app')
app.use(VueAxios, axios)
app.provide("axios", app.config.globalProperties.axios)
