<template>
    <div class="show-blogs">
        <div id="show-blogs">
            <h1>exercise store</h1>
            <div class="group-single">
                <router-link v-bind:to="'/exercise/' + blog.id"  v-for="blog in blogs" :key="blog.id" class="single-blos">
                    <h2>{{blog.title}}</h2>
                    <article>{{blog.body}}</article>
                </router-link>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            blogs: []
        }
    },
    created() {
        this.$http.get('https://jsonplaceholder.typicode.com/posts').then(function (data) {
            this.blogs = data.body
            console.log(data);
        })
    },
}
</script>

<style scoped>
.show-blogs {
    padding:5% 8%;
    background-color: #eaeaea; 
}

#show-blogs {
    background-color: white;
}

.group-single {
    padding: 2%;
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    justify-content: space-between;
}

.single-blos {
    height: 400px;
    width: 30%;
}

</style>