<template>
  <div id="app" class="Poppins">
    <!-- <app-header></app-header> -->
    <router-view/>
    <!-- <app-footer></app-footer> -->

  </div>
</template>
<script>
 
  export default {
    components: {
      // "app-header": HeaderView,
      // "app-footer": FooterView,
    },
  }

</script>

<style lang="css">
  *{
    margin: 0;
    padding: 0;
  }
  @import url("https://fonts.googleapis.com/css?family=Poppins");
  @import url("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css");
.Poppins {
  font-family: "Poppins";
  font-style: normal;
}

.fa{
  font-family: "FontAwesome";
}

* {
  margin: 0px;
  padding: 0px;
}

.center {
  display: flex;
  justify-content: center;
}

.end{
  display: flex;
  justify-content: end;
}

.flex {
  display: flex;
}

.between{
  display: flex;
  justify-content: space-between;
}

a {
  text-decoration: none;
}

li {
  list-style-type: none;
}

button{
  cursor: pointer;
}

.color{
  color: #fecc09;
}

.hr {
  height: 3px;
  width: 200px;
  background-color: #fecc09;

}
/*----------------- */
.form-field {
  display: block;
  position: relative;
  margin-top: 40px;
}

.form-field:first-child {
  margin-top: 0px;

}

.form-input {
  border: 1px solid #fecc09;
  border-radius: 4px;
  width: 100%;
  height: 40px;
  transition: 0.25s ease;
  outline: none;
  font-size: larger;
  padding-left: 20px;
  background-color: rgba(238, 238, 238, 0);
  color: #fecc09;
}

.from-label {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  left: 20px;
  user-select: none;
  color: #fecc09;
  pointer-events: none;
  transition: 0.25s ease;
  border-radius: 4px;
}

.form-input:not(:placeholder-shown)+.from-label,
.form-input:focus+.from-label {
  top: -15px;
  left: 11px;
  padding: 0 10px;
  display: inline-block;
  background-color: #fff0;
  color: #ffd500;
  left: -10px;
}

</style>
