<template>
    <div>
        <div class="card">
            <h3 class="card-header">Fournisseur : {{ name }}</h3>
            <h6 v-if="status" :class="'green'">A du stock: OK</h6>
            <h6 v-else :class="'red'">A du stock: KO</h6>
            <h5>Date de la derniere levée: {{ checkedAt }}</h5>
        </div>
    </div>
</template>

<script>
    export default {
        name: "Supplier",
        props: ['name', 'status', 'checkedAt']
    }
</script>

<style scoped>
    .green{ color: mediumseagreen; }
    .red{ color: orangered; }
</style>