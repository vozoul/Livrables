<template>
    <div class="container">
        <h1>Liste des fournisseurs</h1>
        <div v-for="oneSup in Suppliers">
            <Suppliers v-bind:name="oneSup.name" v-bind:state="oneSup.state" v-bind:checked-at="oneSup.checkedAt"></Suppliers>
        </div>
    </div>
</template>

<script>
    import Suppliers from './Suppliers.vue'
    import { format, render, cancel, register } from 'timeago.js'

    export default {
        name: "SupplierList",
        components: {Suppliers},
        data() {
            return {
                Suppliers: [
                    {
                        id: '1',
                        state: false,
                        name: 'Premier fournisseur',
                        checkedAt: format(new Date().toLocaleString()),
                    }, {
                        id: '2',
                        state: true,
                        name: 'second fournisseur',
                        checkedAt: format(new Date().toLocaleString()),
                    },
                ]
            }

        },
        methods: {}
    }
</script>

<style scoped>
    .red {
        color: #ff0000;
    }

    .green {
        color: #00ff00;
    }
</style>