<template>
    <div class="show-blogs">
        <div id="show-blogs">
            <h1>exercise</h1>
            <div class="group-single">
                <div class="single-blos">
                    <h2>{{this.blogs.title}}</h2>
                    <article>{{this.blogs.body}}</article>
                </div>
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
        this.$http.get('https://jsonplaceholder.typicode.com/posts/' + this.$route.params.id ).then(function (data) {
            this.blogs = data.body
            console.log(this.blogs);
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