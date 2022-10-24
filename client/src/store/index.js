import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'
import createPersistedState from 'vuex-persistedstate';

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    currentUser: {
      email:'',
      password: '',
      token: null
    }
  },
  getters: {
  },
  mutations: {
    setToken(state, newToken){
      state.currentUser.token = newToken
    },
    signOut(state) {
      state.currentUser.token = '';
    }
  },
  actions: {
    async signInAdmin({state, commit}) {
      try {
        await axios.post('http://127.0.0.1:3000/api/v1/admins/sessions',{
          email: state.currentUser.email,
          password: state.currentUser.password
        }).then (
          (response) => {
            console.log(response),
            commit("setToken", response.data.token);
            state.currentUser.email='',
            state.currentUser.password=''
            self.$router.push('/discuss')
          }
        )
      } catch (error) {
        console.log(error)
      }
    },
    async signIn({state, commit}) {
      try {
        await axios.post('http://127.0.0.1:3000/api/v1/users/sessions',{
          email: state.currentUser.email,
          password: state.currentUser.password
        }).then (
          (response) => {
            console.log(response),
            commit("setToken", response.data.token);
            state.currentUser.email='',
            state.currentUser.password=''
            this.$router.push('/')
          }
        )
      } catch (error) {
        console.log(error)
      }
    }
  },
  plugins: [createPersistedState()],
  modules: {
  }
})
