<template>
    <div class="background center color">
          <div class="form-login">
            <div class="main">
              <div class="center">
                <div class="avata">
                </div>
              </div>
              <center>
                <h2>login</h2>
              </center>
              <div class="box">
                <div class="form-field">
                  <input type="text" v-model="currentUser.email" name="" class="form-input" placeholder=" " />
                  <label class="from-label">Email</label>
                </div>
              </div>
              <div class="box">
                <div class="form-field">
                  <input type="password" v-model="currentUser.password" name="pass" id="pass1" class="form-input"
                    placeholder=" " />
                  <label class="from-label">Password</label>
                </div>
              </div>
              <div class="between">
                <div><input id="checkBox" @click="pwd" type="checkbox" name="sport" />show pass</div>
                <router-link to="/create" class="color">create account</router-link>
              </div>
              <button class="bt color" v-on:click="signInClone">login</button>
            </div>
          </div>
        </div>
</template>

<script>
import { mapActions, mapState, } from 'vuex';
export default {
  data() {
    return {
      email: '',
      password: '',
    };
  },
  computed: mapState(["currentUser"]),
  methods: {
    ...mapActions(["signIn"]),
    // mapMutations(['signOut']),
    signInClone() {
      this.success = !this.success
      this.signIn()
    },

    pwd() {
      if (document.getElementById("checkBox").checked) {
        document.getElementById("pass1").type = "text";
      } else {
        document.getElementById("pass1").type = "Password";
      }
    },
    // login(){
    //   console.log("123 login");
    //   this.$store.dispatch("AUTH/login",{email: this.email,password: this.password});
    // },
    


  },

};
</script>

<style scoped>
@import url(@/assets/style/style-login.css)

</style>