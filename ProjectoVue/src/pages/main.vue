<script setup>
import avatar1 from '@/assets/images/avatars/avatar-1.png'
import avatar2 from '@/assets/images/avatars/avatar-2.png'
import avatar3 from '@/assets/images/avatars/avatar-3.png'
import avatar4 from '@/assets/images/avatars/avatar-4.png'
import eCommerce2 from '@/assets/images/eCommerce/2.png'
import pages1 from '@/assets/images/pages/1.jpg'
import pages2 from '@/assets/images/pages/2.jpg'
import pages3 from '@/assets/images/pages/3.jpg'
import pages5 from '@/assets/images/pages/5.jpg'
import pages6 from '@/assets/images/pages/6.jpg'
import axios from 'axios'

const avatars = [
  avatar1,
  avatar2,
  avatar3,
  avatar4,
]
const isCardDetailsVisible = ref(false)

const { reactive, toRefs, computed, onMounted } = Vue
const { axioss } = axios
const app = Vue.createApp({
  setup() {
    const state = reactive({
      pokemons: [],
      filteredPokemon: computed(() => updatePokemon()),
      text: "",
      urlIdLookup: {},
    })

    const fetchPokemon = () => {
      axios
        .get("https://pokeapi.co/api/v2/pokemon?offset=0")
        .then(response => {
          state.pokemons = response.data.results // 👈 get just results
        })
    }

    fetchPokemon()

    // 👇 function to get index
    const getPokemonId = item => {
      return state.pokemons.findIndex(p => p.name === item)
    }

    function updatePokemon() {
      if (!state.text) {
        return []
      }
      
      return state.pokemons.filter(pokemon =>
        pokemon.name.includes(state.text),
      )
    }

    // 👇 return new function
    return { ...toRefs(state), fetchPokemon, updatePokemon, getPokemonId }
  },
})
app.mount('#demo')
</script>

<template>
  <VRow>
    <!-- 👉 CARD -->
    <VCol
      cols="12"
      sm="6"
      md="4"
    >
      <VCard
        to="clientes"
      >
        <VImg
          :src="pages1"
          cover
        />

        <VCardItem>
          <VCardTitle>Clientes</VCardTitle>
        </VCardItem>

        <VCardText>
          Listado de clientes con sus datos para agregar o modificar
        </VCardText>
      </VCard>
    </VCol>
    
    <VCol
      cols="12"
      sm="6"
      md="4"
    >
      <VCard to="inventario">
        <VImg
          :src="pages2"
          cover
        />

        <VCardItem>
          <VCardTitle>Inventario</VCardTitle>
        </VCardItem>

        <VCardText>
          Listado de inventario para agregar o modificar
        </VCardText>
      </VCard>
    </VCol>
    <VCol 
      cols="12"
      sm="6"
      md="4"
    >
      <VCard to="servicio">
        <VImg
          :src="pages3"
          cover
        />

        <VCardItem>
          <VCardTitle>
            Servicios
          </VCardTitle>
        </VCardItem>

        <VCardText>
          Listado de Servicios para agregar o modificar
        </VCardText>
      </VCard>
    </VCol>
  </VRow>
</template>


<style lang="scss" scoped>
.avatar-center {
  position: absolute;
  border: 3px solid rgb(var(--v-theme-surface));
  inset-block-start: -2rem;
  inset-inline-start: 1rem;
}

// membership pricing
.member-pricing-bg {
  position: relative;
  background-color: rgba(var(--v-theme-on-surface), var(--v-hover-opacity));
}

.membership-pricing {
  sup {
    inset-block-start: 9px;
  }
}
</style>

