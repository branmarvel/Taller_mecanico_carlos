import axios from "axios"
const API_URL = "https://api.tibiadata.com"
export default {
  // la funcion de data nos permite guardar variables y objetos que luego pueden ser accedidos por el template
  data() {
    return {
      images: {
        "Open PvP": require("@/assets/option_server_pvp_type_open.gif"),
        "Retro Hardcore PvP": require("@/assets/option_server_pvp_type_retrohardcore.png"),
        "Retro Open PvP": require("@/assets/option_server_pvp_type_retro.gif"),
        "Optional PvP": require("@/assets/option_server_pvp_type_optional.gif"),
        "Hardcore PvP": require("@/assets/option_server_pvp_type_hardcore.gif"),
        "North America": require("@/assets/option_server_location_usa.png"),
        "Europe": require("@/assets/option_server_location_eur.png"),
        "South America": require("@/assets/option_server_location_bra.png"),
      },
      mundos: {
        worlds: {
          players_online: 0,
          record_date: String,
          record_players: 0,
          regular_worlds: [
            {
              battleye_date: String,
              battleye_protected: false,
              game_world_type: String,
              location: String,
              name: String,
              players_online: 0,
              premium_only: false,
              pvp_type: String,
              status: String,
              tournament_world_type: String,
              transfer_type: String,
            },
          ],
          tournament_worlds: [
            {
              battleye_date: String,
              battleye_protected: false,
              game_world_type: String,
              location: String,
              name: String,
              players_online: 0,
              premium_only: false,
              pvp_type: String,
              status: String,
              tournament_world_type: String,
              transfer_type: String,
            },
          ],
        },
      },
    }
  },

  // la seccion de methods es donde creamos las funciones para esta vista o archivo
  methods: {
    obtenerDatosAPIMundos() {
      axios
        .get(API_URL + "/v3/worlds")
        .then(res => {
          this.mundos = res.data
        })
        .catch(e => {
          console.log(e)
        })
    },
  },
  created() {
    this.obtenerDatosAPIMundos()
  },
}
