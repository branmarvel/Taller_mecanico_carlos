<script setup>
import upgradeBannerDark from '@/assets/images/pro/upgrade-banner-dark.png'
import upgradeBannerLight from '@/assets/images/pro/upgrade-banner-light.png'
import logo from '@/assets/logo.svg?raw'
import {
  VerticalNavLink,
  VerticalNavSectionTitle,
} from '@layouts'
import { useTheme } from 'vuetify'

const vuetifyTheme = useTheme()
const upgradeBanner = computed(() => {
  return vuetifyTheme.global.name.value === 'light' ? upgradeBannerLight : upgradeBannerDark
})
</script>

<template>
  <!-- 👉 Nav header -->
  <div class="nav-header">
    <RouterLink
      to="/"
      class="app-logo d-flex align-center gap-x-3 app-title-wrapper"
    >
      <!-- ℹ️ You can also use img tag or VImg here -->
 
      <Transition name="vertical-nav-app-title">
        <h1 class="font-weight-semibold leading-normal text-xl text-uppercase">
          Taller de Carlos
        </h1>
      </Transition>
    </RouterLink>
  </div>

  <!-- 👉 Nav items -->
  <ul>
    <VerticalNavLink
      :item="{
        title: 'Inicio',
        to: 'index',
        icon: { icon: 'mdi-home-outline' }
      }"
    />
    
    <VerticalNavLink
      :item="{
        title: 'Clientes',
        to: 'clientes',
        icon: { icon: 'mdi-credit-card-outline' }
      }"
    />

    <VerticalNavLink
      :item="{
        title: 'Inventario',
        to: 'inventario',
        icon: { icon: 'mdi-box-variant-closed' }
      }"
    />
   
    <VerticalNavLink
      :item="{
        title: 'Servicio',
        to: 'servicio',
        icon: { icon: 'mdi-car-wrench' }
      }"
    />
   
    <!-- 👉 Pages -->
    <VerticalNavSectionTitle :item="{ heading: 'Pages' }" />
    <VerticalNavLink
      :item="{
        title: 'Iniciar sesión',
        to: 'login',
        target: '_blank',
        icon: { icon: 'mdi-login' }
      }"
    />
    <VerticalNavLink
      :item="{
        title: 'Registrarse',
        to: 'register',
        target: '_blank',
        icon: { icon: 'mdi-account-plus-outline' }
      }"
    />

    <!-- ℹ️ This path doesn't exist so 404 route will catch this undefined path -->
    <!--
      <VerticalNavLink
      :item="{
      title: 'Error',
      to: { path: '/error' },
      target: '_blank',
      icon: { icon: 'mdi-alert-circle-outline' }
      }"
      /> 
    -->

    <!-- 👉 User Interface -->
    <VerticalNavSectionTitle :item="{ heading: 'User Interface' }" />
    

 
    <!--     
      <VerticalNavLink
      :item="{
      title: 'Typography',
      to: 'typography',
      icon: { icon: 'mdi-alpha-t-box-outline' }
      }"
      />
      <VerticalNavLink
      :item="{
      title: 'Typography',
      to: 'typography',
      icon: { icon: 'mdi-alpha-t-box-outline' }
      }"
      />
      <VerticalNavLink
      :item="{
      title: 'Icons',
      to: 'icons',
      icon: { icon: 'mdi-eye-outline' }
      }"
      />
      <VerticalNavLink
      :item="{
      title: 'Cards',
      to: 'card-basic',
      icon: { icon: 'mdi-credit-card-outline' }
      }"
      />
      <VerticalNavLink
      :item="{
      title: 'Tables',
      to: 'tables',
      icon: { icon: 'mdi-table' }
      }"
      />
      <VerticalNavLink
      :item="{
      title: 'Form Layouts',
      to: 'form-layouts',
      icon: { icon: 'mdi-form-select' }
      }"
      /> 
    -->
  </ul>
</template>

<style lang="scss">
// .v-navigation-drawer {
//   height: 100%;

//   .v-navigation-drawer__content {
//     display: flex;
//     flex-direction: column;

//     > ul {
//       flex-grow: 1;
//     }
//   }
// }
</style>
