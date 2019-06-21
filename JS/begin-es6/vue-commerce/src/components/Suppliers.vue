<template>
    <div class="card my-5">
        <div class="card-header">{{ this.name }}</div>
        <div class="card-body">
            <div class="card-text" v-if="state" :class="'green'">A du stock ? <strong>OK</strong></div>
            <div v-else :class="'red'">A du stock ? <strong>KO</strong></div>
        </div>
        <div class="card-footer">
            <div class="card-text">Date de dernière relevé des stocks: {{ checkedAt }}</div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "Suppliers.vue",
        props:{
            id: Number,
            state: Boolean,
            name: String,
            status: Boolean,
            checkedAt: String,
        }
    }
</script>

<style scoped>
    .red{
        color: #ff6246;
    }
    .green{
        color: #a1ff5e;
    }
</style>