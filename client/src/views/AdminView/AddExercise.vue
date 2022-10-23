<template>
    <div class="flex">
        <app-menu></app-menu>
        <div class="main">
            <app-head></app-head>
            <div class="from-add">
                <div class="title-from ">add exercise</div>
                <div class="add-item">
                    <div class="form-field">
                        <input type="text" name="" class="form-input" placeholder=" " v-model="Title"
                            v-on:keyup="text_titles">
                        <label class="from-label">Title :</label>
                    </div>
                </div>
                <div class="content add-item">
                    <textarea name="comments" rows="8" placeholder="content" v-model="content"
                        v-on:keyup="text_contents"></textarea>
                </div>
                <div class="flex">
                    <div class="left">
                        <div class="add-item flex">
                            <div class="form-field">
                                <input type="text" name="" class="form-input" placeholder=" " v-model="image_exercises">
                                <label class="from-label">input image :</label>
                            </div>
                            <label class="item-file" for="123">
                                <input type="file" name="video" class="file" @change="previewFiles" id="123">add
                            </label>
                            <span class="item-file  " v-if="filename"> Selected file: {{filename}}</span>
                        </div>
                        <p class="add-item"> select the type</p>
                        <div class="flex group-type">
                            <label class="center type-item item-file  " v-for="types in type" :key="types.id">
                                <input class="" type="radio" name="types" v-bind:value="types"
                                    v-model="category_exercise_id">{{types}}
                            </label>
                            <label class="center item-file  type-item" v-on:click="">
                                +
                            </label>
                        </div>
                        <div class="flex ">
                            <div class="group-time">
                                <div class="form-field ">
                                    <input type="text" name="" class="form-input" placeholder=" "
                                        v-model="time_exercise">
                                    <label class="from-label">time exercise :</label>
                                </div>
                            </div>
                            <div class="group-time">
                                <div class="form-field">
                                    <input type="text" name="" class="form-input" placeholder=" " v-model="time_break">
                                    <label class="from-label">time break :</label>
                                </div>
                            </div>
                        </div>
                        <div class="flex ">
                            <div class="group-time">
                                <div class="form-field ">
                                    <input type="text" name="" class="form-input" placeholder=" " v-model="min_sets">
                                    <label class="from-label">min sets :</label>
                                </div>
                            </div>
                            <div class="group-time">
                                <div class="form-field">
                                    <input type="text" name="" class="form-input" placeholder=" " v-model="max_sets">
                                    <label class="from-label">max sets :</label>
                                </div>
                            </div>
                        </div>
                        <div class="flex ">
                            <div class="group-time">
                                <div class="form-field ">
                                    <input type="text" name="" class="form-input" placeholder=" " v-model="min_reps">
                                    <label class="from-label">min reps :</label>
                                </div>
                            </div>
                            <div class="group-time">
                                <div class="form-field">
                                    <input type="text" name="" class="form-input" placeholder=" " v-model="max_reps">
                                    <label class="from-label">max reps :</label>
                                </div>
                            </div>
                        </div>
                        <div class="group-time">
                            <div class="form-field">
                                <input type="text" name="" class="form-input" placeholder=" " v-model="highest_weight">
                                <label class="from-label">highest weight :</label>
                            </div>
                        </div>
                    </div>
                    <div class=" sample">
                        <div class="img-err">
                            <img :src="image_exercises" alt="">
                        </div>
                        <b>{{text_title}}</b>
                        <p>{{category_exercise_id}}</p>
                        <p>{{time_exercise}} - {{time_break}}</p>
                        {{text_content}}
                        <div class="end">
                            <button class="bt" v-on:click="add">dan bai</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios';
import menu from "./Menuview.vue"
import head from "./headview.vue"
export default ({
    data() {
        return {
            Title: '',
            category_exercise_id: '',
            content: '',
            image_exercises: '',
            time_exercise: '',
            time_break: '',
            min_sets: '',
            max_sets: '',
            min_reps: '',
            max_reps: '',
            highest_weight: '',
            type: ['gym', 'cadio','fitness'],
            filename: '',
            text_title: '',
            text_content: '',
            ligatures: ' ...',
        }
    },
    components: {
        "app-head": head,
        "app-menu": menu,
    },
    methods: {
        previewFiles(event) {
            this.filename = event.target.files[0].name
            console.log(event.target.files[0]);
        },
        async add() {
            const respone = await axios.post('http://127.0.0.1:3000/api/v1/admins/exercises', {
                name_exercise: this.Title,
                category_id: this.category_exercise_id,
                content: this.content,
                // image_url: this.image_exercises,
                time_exercise: this.time_exercise,
                time_break: this.time_break,
                min_sets: this.min_sets,
                max_sets: this.max_sets,
                min_reps: this.min_reps,
                max_reps: this.max_reps,
                highest_weight: this.highest_weight,
            });
            console.log(respone)
            console.log(types)
            this.$router.push('/listExercise')
        },
        async add_type() {
            const respone = await axios.post('/api/v1/user1/user', {

            });
            console.log(respone)
            console.log(types)
            this.$router.push('/AddExercise')
        },
        text_titles() {
            this.text_title = this.Title.substring(0, 30);
            if (this.Title.length >= 30) {
                return this.text_title = this.text_title + this.ligatures;
            } else {
                return this.text_title
            }
        },
        text_contents() {
            this.text_content = this.content.substring(0, 80);
            if (this.content.length >= 80) {
                return this.text_content = this.text_content + this.ligatures;
            } else {
                return this.text_content
            }
        }
    }
})
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
}

.add-item {
    margin: 30px 0px 0px 30px;
}

.item-file {
    padding: 7.5px 20px;
    border: 1px solid #ccc;
    border-radius: 6px;
    margin-left: 60px;
}

.type-item {
    min-width: 80px;
    margin: 30px 0px 0px 30px;
}

.form-input {
    color: #000;
    border: 1px solid #ccc;
    padding: 0px 20px;
    width: auto;
}

.from-label {
    color: #ccc;
}

.form-input:focus {
    border: 1px solid #000;
}

.form-input:not(:placeholder-shown)+.from-label,
.form-input:focus+.from-label {
    color: black;
}

.content {
    border: 1px solid #ccc;
    width: 95%;
}

textarea {
    outline: none;
    border: none;
    padding: 20px;
    width: 95%;
    font-size: 2em;
}

textarea:not(:placeholder-shown)+.content,

textarea:focus+.content {
    border: 1px solid #000;
}

.left {
    width: 65%;
    margin-bottom: 30px;
}

.group-time {
    margin: 30px 60px 0px 30px;
}

.sample {
    width: 30%;
    height: auto;
    margin-top: 30px;

}

.file {
    display: none;
}

.group-type {
    flex-wrap: wrap;
    flex-direction: row;
    width: 100%;
}

.sample img {
    width: 100%;
    height: auto;
    margin-right: 30px;
}

.img-err {
    background-image: url(@/assets/placeholder.jpg);
    width: 100%;
    height: 300px;
    background-repeat: no-repeat;
    background-size: cover;
}

.sample p {
    color: #ccc;
    font-size: 0.9em;
}

.sample b {
    font-size: x-large;
}

.bt {
    padding: 10px 30px;
    border: 1px solid #ccc;
    border-radius: 4px;
    color: #ccc;
    background-color: rgba(0, 0, 0, 0);
}

.bt:hover {
    border: 1px solid rgb(0, 0, 0);
    color: #000;
}
</style>