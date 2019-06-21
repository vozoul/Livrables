<template>
    <div class="container align-content-center">
        <h1>
            Carte des fournisseurs
        </h1>
        <gmap-map
                :center="{lat:10, lng:10}"
                :zoom="7"
                style="width: 100%; height: 800px"
        >
            <GmapMarker
                    :key="index"
                    v-for="(m, index) in suppliers"
                    :position="m.position"
                    :clickable="true"
                    :draggable="true"
                    @click="center=m.position"
            />
        </gmap-map>
    </div>
</template>

<script>

    export default {
        name: "SupplierMap",
        data () {
            return {
                place: '',
                suppliers: [
                    {
                        id: 1,
                        name: 'Raheem50',
                        position: {
                            lat: 10,
                            lng: 10
                        },
                    },
                    {
                        id: 2,
                        name: 'Marques67',
                        position: {
                            lat: 11,
                            lng: 9.6
                        },
                    }
                ]
            };
        },
    }
</script>

<style scoped>

</style>