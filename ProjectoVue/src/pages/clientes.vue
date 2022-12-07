
<template>
  <VCard>
    <VTable>
      <div class="tablaPerson">
       <table class="table">
           <thead class="thead-dark">
                  <tr id="th">
                      <th class="th">Nombre</th>
                      <th class="th">Apellido</th>
                      <th class="th">cedula</th>
                      <th class="th">Fecha de creacion</th>
                      <td>Editar</td>
                  </tr>
              </thead>
              <tbody>
                  <tr id="td" v-for="persona in persona" :key="persona.nombre">
                      <td class="td text">{{persona.nombre}}</td>
                      <td class="td text">{{persona.apellido}}</td>
                      <td class="td text">{{persona.cedula}}</td>
                      <td class="td text">{{persona.fecha_creado}}</td>
                      <td>Editar</td>
                  </tr>
            </tbody>
        </table>
      </div>
    </VTable>
  </VCard>
</template>

<script>
import eCommerce2 from '@/assets/images/eCommerce/2.png'
import axios from "axios"
import {ref} from "vue" 

const API_URL = "http://127.0.0.1:8000/api"
export default{
  data() {
    return {
      name: "",
      persona: {
  
      },
    }
  },
  created() {
    this.obtenerDatosAPIMundos()
  },
  methods: {
    obtenerDatosAPIMundos() {
      axios
        .get(API_URL + "/persona/")
        .then(res => {
          this.persona = res.data
        })
        .catch(e => {
          console.log(e)
        })
    },
  },
}
</script>
<style lang="scss">
.tablaPerson{
  font-family: 'Rock Salt', cursive;
  padding: 20px;
  font-style: italic;
  caption-side: bottom;
  color: #666;
  text-align: right;
  letter-spacing: 1px;
}
.text{
  color: white;
}
.table {
   
   width: 100%;
   border: 1px solid #000;
}
.th{
   width: 25%;
   text-align: left;
   vertical-align: top;
   border: 1px solid #000;
   border-collapse: collapse;
   padding: 0.3em;
   caption-side: bottom;
}
.td{
  width: 25%;
   text-align: left;
   vertical-align: top;
   border: 1px solid #000;
   border-collapse: collapse;
   padding: 0.3em;
   caption-side: bottom;
}

.th {
   background: #eee;
}
</style>
