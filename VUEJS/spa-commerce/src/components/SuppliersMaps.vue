<template>
    <div>
        <div class="py-5">
            <gmap-map :center="{lat:10, lng: 10}" :zoom="7" style="width: 100%; height: 600px; margin-top: 20px">
                <GmapMarker
                        :key="index"
                        v-for="(m, index) in markers"
                        :position="{lat:parseFloat(m.lat),
                                    lng:parseFloat(m.lng)}"
                        :clickable="true"
                        :draggable="true"
                        @click="center=m.position"
                />
            </gmap-map>
        </div>
    </div>
</template>

<script>
    export default {
        name: "SuppliersMaps.vue",
        data() {
            return {
                markers: [{
                    "id": "5ccab34067609b0017eb4e9c",
                    "name": "google",
                    "checkedAt": "2010-01-01T00:00:00.000Z",
                    "status": true,
                    "lat": "12",
                    "lng": "12",
                    "createdAt": "2019-05-02T09:07:12.900Z",
                    "updatedAt": "2019-05-02T09:07:12.900Z"
                }, {
                    "id": "5c98d8042af55b0017ba381c",
                    "name": "Kacie.Weber12",
                    "checkedAt": "2019-03-25T02:21:10.715Z",
                    "status": true,
                    "lat": "86.2334",
                    "lng": "-171.2672",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba381b",
                    "name": "Raheem50",
                    "checkedAt": "2019-03-25T05:26:16.613Z",
                    "status": false,
                    "lat": "31.9139",
                    "lng": "58.3804",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba381a",
                    "name": "Frank44",
                    "checkedAt": "2019-03-25T13:25:15.187Z",
                    "status": false,
                    "lat": "50.8967",
                    "lng": "-165.1583",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3819",
                    "name": "Devin60",
                    "checkedAt": "2019-03-24T14:05:49.199Z",
                    "status": true,
                    "lat": "32.0716",
                    "lng": "-75.7375",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3818",
                    "name": "Rick_Mueller6",
                    "checkedAt": "2019-03-25T08:39:38.027Z",
                    "status": true,
                    "lat": "39.1227",
                    "lng": "-37.0041",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3817",
                    "name": "Kimberly_Braun",
                    "checkedAt": "2019-03-24T13:51:55.232Z",
                    "status": false,
                    "lat": "-80.7349",
                    "lng": "6.4900",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3816",
                    "name": "Angel_Stroman",
                    "checkedAt": "2019-03-24T23:36:41.180Z",
                    "status": false,
                    "lat": "-87.0271",
                    "lng": "162.8048",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3815",
                    "name": "Xander_Hammes",
                    "checkedAt": ("2019-03-24T20:36:28.951Z"),
                    "status": false,
                    "lat": "-76.9160",
                    "lng": "-115.6229",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3814",
                    "name": "Jevon_Reinger",
                    "checkedAt": "2019-03-24T20:04:03.176Z",
                    "status": true,
                    "lat": "42.6313",
                    "lng": "-130.5931",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3813",
                    "name": "Myles49",
                    "checkedAt": "2019-03-24T19:26:29.353Z",
                    "status": true,
                    "lat": "14.7380",
                    "lng": "-157.6766",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3812",
                    "name": "Narciso84",
                    "checkedAt": "2019-03-24T21:56:37.782Z",
                    "status": false,
                    "lat": "-12.6340",
                    "lng": "-125.5771",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3811",
                    "name": "Rosella.Kilback22",
                    "checkedAt": "2019-03-24T18:57:25.990Z",
                    "status": false,
                    "lat": "37.8824",
                    "lng": "38.4061",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3810",
                    "name": "Sammie46",
                    "checkedAt": "2019-03-25T11:29:05.318Z",
                    "status": false,
                    "lat": "-9.0155",
                    "lng": "34.6593",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba380f",
                    "name": "Selena.Schulist67",
                    "checkedAt": "2019-03-24T16:43:14.800Z",
                    "status": true,
                    "lat": "-81.2406",
                    "lng": "130.6475",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba380e",
                    "name": "Riley.Mertz91",
                    "checkedAt": "2019-03-24T14:37:53.590Z",
                    "status": false,
                    "lat": "89.2406",
                    "lng": "-90.2223",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba380d",
                    "name": "Lelah.Wilkinson84",
                    "checkedAt": "2019-03-25T02:10:03.858Z",
                    "status": false,
                    "lat": "28.7837",
                    "lng": "50.2252",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba380c",
                    "name": "Gabriel_Auer68",
                    "checkedAt": "2019-03-24T17:07:59.324Z",
                    "status": true,
                    "lat": "75.6639",
                    "lng": "60.8417",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba380b",
                    "name": "Constantin48",
                    "checkedAt": "2019-03-25T04:51:45.682Z",
                    "status": true,
                    "lat": "79.0579",
                    "lng": "-25.4273",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba380a",
                    "name": "Wayne.Bahringer",
                    "checkedAt": "2019-03-25T09:52:20.593Z",
                    "status": false,
                    "lat": "27.5138",
                    "lng": "-96.3962",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3809",
                    "name": "Joelle77",
                    "checkedAt": "2019-03-25T12:56:17.996Z",
                    "status": true,
                    "position": {
                        "lat": "85.6310",
                        "lng": "24.0997",
                    },
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3808",
                    "name": "Consuelo52",
                    "checkedAt": ("2019-03-24T15:09:03.749Z"),
                    "status": true,
                    "lat": "66.5314",
                    "lng": "-172.7635",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3807",
                    "name": "Brook.Wisoky13",
                    "checkedAt": "2019-03-25T02:54:34.926Z",
                    "status": false,
                    "lat": "30.9653",
                    "lng": "-168.4138",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3806",
                    "name": "Ansley76",
                    "checkedAt": "2019-03-25T08:20:15.935Z",
                    "status": true,
                        "lat": "34.0245",
                        "lng": "-171.7291",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3805",
                    "name": "Ryley32",
                    "checkedAt": "2019-03-24T14:08:53.572Z",
                    "status": true,
                    "lat": "-84.9379",
                    "lng": "-45.0320",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3804",
                    "name": "Destiny_Kunze1",
                    "checkedAt": "2019-03-25T00:59:19.627Z",
                    "status": true,
                    "lat": "1.2619",
                    "lng": "-124.8092",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3803",
                    "name": "Lorenza.Pollich",
                    "checkedAt": "2019-03-25T04:40:22.321Z",
                    "status": false,
                    "lat": "33.8417",
                    "lng": "34.3022",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3802",
                    "name": "Carlie3",
                    "checkedAt": "2019-03-24T15:59:33.842Z",
                    "status": true,
                    "latitude": "73.5335",
                    "longitude": "-110.6971",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }, {
                    "id": "5c98d8042af55b0017ba3801",
                    "name": "Scarlett.Nienow",
                    "checkedAt": "2019-03-24T21:06:06.715Z",
                    "status": true,
                    "lat": "-68.7419",
                    "lng": "-166.6099",
                    "createdAt": "2019-03-25T13:30:44.000Z",
                    "updatedAt": "2019-03-25T13:30:44.000Z"
                }]

            }
        }
    }
</script>

<style scoped>

</style>