<template>
    <div class="flex">
        <app-menu></app-menu>
        <div class="main">
            <app-head></app-head>
            <div class="from-add ">
                <div class="title-from flex">list of exercises
                    <div class="search flex">
                        <input type="text" class="" placeholder="search">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                        </svg>
                    </div>
                </div>
                <div class="group flex">
                    <div class="item"></div>
                    <div class="item"></div>
                    <div class="item"></div>
                    <div class="item"></div>
                    <div class="item"></div>
                    <div class="item"></div>
                    <div class="item"></div>
                    <div class="item"></div>
                    <div class="item"></div>
                    <div class="item"></div>
                    <div class="item"></div>
                    <div class="item"></div>
                    <div class="item"></div>
                    <div class="item"></div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios';
import menu from "./Menuview.vue"
import head from "./headview.vue"
export default {
    data() {
        return {

        }
    },
    components: {
        "app-head": head,
        "app-menu": menu,
    },
    methods: {

    }
}
</script>

<style scoped>
.main {
    width: -webkit-fill-available;
    background-color: rgb(219, 219, 219);
}

.from-add {
    margin: 20px 5%;
    width: 90%;
    background-color: white;
    border: 1px #ccc solid;
}

.title-from {
    padding: 10px 30px;
    border-bottom: 1px #ccc solid;
    justify-content: space-between;
    align-items: center;
}

.search {
    border: 1px solid #ccc;
    border-radius: 6px;
    align-items: center;
    padding: 0 15px;

}

.search input {
    height: 30px;
    margin: 0px 15px;
    width: 400px;
    outline: none;
    border: none;
}

.group{
    margin: 40px 60px;
    flex-wrap: wrap;
    flex-direction: row;
}

.group .item{
    width: 250px;
    height: 300px;
    background-color: aqua;
    margin: 1%;
}
</style>