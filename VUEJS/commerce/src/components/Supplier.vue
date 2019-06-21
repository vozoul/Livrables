<template>
    <div class="container">
        <h1>Liste des fournisseurs</h1>
        <div class="card my-5">
            <div class="card-header">Fournisseur {{ this.name }}</div>
            <div class="card-body">
                <div class="card-text" v-if="state" :class="'green'">A du stock ? <strong>OK</strong></div>
                <div v-else :class="'red'">A du stock ? <strong>KO</strong></div>
            </div>
            <div class="card-footer">
                <div class="card-text">Date de dernière relevé des stocks: {{ checkedAt }}</div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "Supplier.vue",
        data() {
            return {
                name: 'Raheem50',
                status: false,
                checkedAt: new Date().toLocaleString()
            }
        }
    }
</script>

<style scoped>
    .green {
        color: #a1ff5e;
    }

    .red {
        color: #ff6246;
    }
</style>