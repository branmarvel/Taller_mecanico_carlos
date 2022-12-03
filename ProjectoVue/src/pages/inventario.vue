<script setup>
const data = [
  {
    responsiveId: '',
    id: 95,
fullName: 'Pieza',
    post: 'Toyota',
email: 'DPR8EA9',
    city: 'Puzi',
    start_date: '09/27/2018',
    salary: 19586.23,
    age: '27',
    experience: '2 Years',
    status: 1,
  },
  {
    responsiveId: '',
    id: 1,
fullName: 'Pieza',
    post: 'Toyota',
email: 'DPR8EA9',
    city: 'Krasnosilka',
    start_date: '09/23/2016',
    salary: 23896.35,
    age: '61',
    experience: '1 Year',
    status: 2,
  },
  {
    responsiveId: '',
    id: 7,
fullName: 'Pieza',
    post: 'Toyota',
email: 'DPR8EA9',
    city: 'Lampuyang',
    start_date: '10/15/2017',
    salary: 18991.67,
    age: '59',
    experience: '9 Years',
    status: 3,
  },
  {
    responsiveId: '',
    id: 11,
fullName: 'Pieza',
    post: 'Toyota',
email: 'DPR8EA9',
    city: 'Colima',
    start_date: '06/12/2018',
    salary: 19252.12,
    age: '30',
    experience: '0 Year',
    status: 4,
  },
  {
    responsiveId: '',
    id: 3,
fullName: 'Pieza',
    post: 'Toyota',
email: 'DPR8EA9',
    city: 'Golcowa',
    start_date: '03/24/2018',
    salary: 13076.28,
    age: '66',
    experience: '6 Years',
    status: 5,
  },
  {
    responsiveId: '',
    id: 5,
fullName: 'Pieza',
    post: 'Toyota',
email: 'DPR8EA9',
    city: 'Lucan',
    start_date: '08/25/2017',
    salary: 10909.52,
    age: '33',
    experience: '3 Years',
    status: 2,
  },
  {
    responsiveId: '',
    id: 6,
fullName: 'Pieza',
    post: 'Toyota',
email: 'DPR8EA9',
    city: 'Maofan',
    start_date: '06/01/2017',
    salary: 17803.8,
    age: '61',
    experience: '1 Year',
    status: 1,
  },
  {
    responsiveId: '',
    id: 4,
fullName: 'Pieza',
    post: 'Toyota',
email: 'DPR8EA9',
    city: 'Paquera',
    start_date: '12/03/2017',
    salary: 12336.17,
    age: '22',
    experience: '2 Years',
    status: 3,
  },
]
const status = {
  1: 'Herramientas',
  2: 'Bujias',
  3: 'Cauchos',
  4: 'Pinturas',
  5: 'Ruedas',
}
const statusColor = {
  Herramientas: 'primary',
  Bujias: 'success',
  Cauchos: 'error',
  Pinturas: 'warning',
  Ruedas: 'info',
}
const headers = [
  'Producto',
  'Modelo',
  'Fecha Comprado',
  'Precio',
  'Precio por servicio',
  'Cantidad',
  'Descripción',
  'Categoria',
]
const usreList = data
</script>

<template>
  <VCard>
    <VTable
      :headers="headers"
      :items="usreList"
      item-key="fullName"
      class="table-rounded"
      hide-default-footer
      disable-sort
    >
      <thead>
        <tr>
          <th
            v-for="header in headers"
            :key="header"
          >
            {{ header }}
          </th>
        </tr>
      </thead>

      <tbody>
        <tr
          v-for="row in data"
          :key="row.fullName"
        >
          <!-- name -->

          <td>
            <div class="d-flex flex-column">
              <span class="d-block font-weight-semibold text--primary text-truncate">{{ row.fullName }}</span>
              <small>{{ row.post }}</small>
            </div>
          </td>

          <td v-text="row.email" />
          <td v-text="row.start_date" />
          <td v-text="`$${row.salary}`" />
          <td></td>
          <td v-text="row.age" />
          
          <td></td>
          <!-- status -->
          <td>
            <VChip
              small
              :color="statusColor[status[row.status]]"
              class="font-weight-medium"
            >
              {{ status[row.status] }}
            </VChip>
          </td>
        </tr>
      </tbody>
    </VTable>
  </VCard>
</template>
