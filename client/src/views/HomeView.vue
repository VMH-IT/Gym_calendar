<template>
  <div class="Poppins">
    <div class="main">
      <div class="slide">
        <img src="@/assets/slide-02.png" alt="">
      </div>
      <div class="block-intro">
        <div class="background-intro">
          <img src="@/assets/body-01.jpg" alt="">

          <div class="text">
            <h1>Overview of the gym</h1>
            <div class="flex fa">
              <ul class="">
                <li class="fa-check">Professional gym space</li>
                <li class="fa-check">There are more than 20 senior coaches</li>
                <li class="fa-check">60+ coaches active 18/24h</li>
                <li class="fa-check">Get one-on-one tutoring with highly experienced trainers</li>
                <li class="fa-check">You can download exercises for free</li>
                <li class="fa-check">Regular trainees receive training 1/1 with the coach</li>
                <li class="fa-check">100+ reached the goal</li>
                <li class="fa-check">great team of coaches</li>
                <li class="fa-check">Highly effective exercises</li>
                <li class="fa-check">More than 80 modern exercise equipment</li>
                <li class="fa-check">Clean training environment</li>
                <li class="fa-check">easy access to great exercises</li>
              </ul>
              <ul>
                <li class="fa-check">150+ great exercises</li>
                <li class="fa-check">300+ people are practicing</li>
                <li class="fa-check">100+ reached the goal</li>
                <li class="fa-check">great team of coaches</li>
                <li class="fa-check">Highly effective exercises</li>
                <li class="fa-check">More than 80 modern exercise equipment</li>
                <li class="fa-check">Clean training environment</li>
                <li class="fa-check">easy access to great exercises</li>
                <li class="fa-check">fast progress rate</li>
                <li class="fa-check">high satisfaction rating</li>
              </ul>
            </div>
          </div>
        </div>

        <div class="service">
          <h1>FitnessGYM CHECK ALL OUR CLUB SERVICES</h1>
          <div class="group-service top flex">
            <div class="block">
              <div>
                <img src="@/assets/services-1.jpg" alt="">
                <div class="text-service">exercise store</div>
              </div>
              <div class="text-hover color">
                <div class="p">
                  <p>exercise store</p>
                  <div>150+ great exercises for free</div>
                </div>
              </div>
            </div>
            <div class="block">
              <div>
                <img src="@/assets/services-2.jpg" alt="">
                <div class="text-service">exercise store</div>
              </div>
              <div class="text-hover color">
                <div class="p">
                  <p>exercise store</p>
                  <div>150+ great exercises for free</div>
                </div>
              </div>
            </div>
            <div class="block">
              <div>
                <img src="@/assets/services-3.jpg" alt="">
                <div class="text-service">exercise store</div>
              </div>
              <div class="text-hover color">
                <div class="p">
                  <p>exercise store</p>
                  <div>150+ great exercises for free</div>
                </div>
              </div>
            </div>
          </div>
          <div class="group-service botom flex">
            <div class="block">
              <div>
                <img src="@/assets/services-1.jpg" alt="">
                <div class="text-service">exercise store</div>
              </div>
              <div class="text-hover color">
                <div class="p">
                  <p>exercise store</p>
                  <div>150+ great exercises for free</div>
                </div>
              </div>
            </div>
            <div class="block">
              <div>
                <img src="@/assets/services-2.jpg" alt="">
                <div class="text-service">exercise store</div>
              </div>
              <div class="text-hover color">
                <div class="p">
                  <p>exercise store</p>
                  <div>150+ great exercises for free</div>
                </div>
              </div>
            </div>
            <div class="block">
              <div>
                <img src="@/assets/services-3.jpg" alt="">
                <div class="text-service">exercise store</div>
              </div>
              <div class="text-hover color">
                <div class="p">
                  <p>exercise store</p>
                  <div>150+ great exercises for free</div>
                </div>
              </div>
            </div>
          </div>
          <div class="banner">
            <div class="">
              <h1>core values</h1>
              <div class=" center"><div class="hr "></div></div>
            </div>
            <div class="center ">
              <div class="left">
                <p class="title-banner">Knowledge</p>
                <p class="text-banner">Fitness is a science that studies the human body, requiring the mind of the practitioner. Understanding that, Nguyen Hoang Tri Dung has spent many years personally experiencing the Fitness environment, learning and absorbing knowledge from the world's top fitness coaches to share with the Coach team as well as the Fitness community. by Swequity</p>
                <img src="@/assets/core2.png" alt="">
                <p class="title-banner">result</p>
                <p >Swequity is committed to a workout program designed specifically, suitable for each customer, so that all sweat, tears, all time, effort, all fatigue, pain in the process of training. Practice will bring you the most worthy results</p>
              </div>
              <div class="right">
                <img src="@/assets/core1.png" alt="">
                <p class="title-banner">Discipline</p>
                <p class="text-banner">The discipline in Fitness is when you can refuse unhealthy foods and always maintain your practice without giving up, thereby creating a healthy and scientific lifestyle for yourself.</p>
                <img src="@/assets/core3.png" alt="">
              </div>
            </div>
            <div></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/HelloWorld.vue'

export default {
  name: 'HomeView',
  components: {
    HelloWorld
  }
}
</script>

<style scoped>
.slide img {
    width: 100%;
    height: auto;
  }
  
  /* .background-main {
    top: 0;
    width: -webkit-fill-available;
    height: -webkit-fill-available;
    position: sticky;
    background-image: url(@/assets/background.jpg);
    z-index: 0;
  } */
  
  .main {
    z-index: 2;
    position: relative;
  }
  
  .block-intro {
    background-color: #eaeaea;
    height: auto;
  
  }
  
  .block-intro img {
    height: auto;
    width: 105%;
  }
  
  .text {
    position: absolute;
    padding: 30px;
    top: 0;
  }
  
  .background-intro {
    position: relative;
    color: #444;
    padding: 0px 15% 40px 15%;
  
  }
  
  .flex ul:first-child {
    margin-left: 0px;
  }
  
  .flex ul {
    margin-left: 40px;
  }
  
  .fa li {
    margin: 12px 0px;
    font-size: 15px;
    color: #444;
  }
  
  .fa-check:before {
    content: "\f00c";
  }
  
  
  .service h1 {
    text-align: center;
    margin: 30xp 0px;
  }
  
  .group-service {
    justify-content: space-between;
    padding: 0px 15% 40px 15%;
  
    /* position: absolute; */
    /* width: 100%; */
  
  }
  
  .block-intro .group-service .block {
    margin-top: 200px;
    width: 30%;
    background-color: aliceblue;
    transition: 1s;
    visibility: hidden;
  }
  
  .block-intro:hover .top .block {
    display: block;
    margin-top: 50px;
    transition: .7s;
    visibility: visible;
  }
  
  .block-intro:hover .botom .block {
    display: block;
    margin-top: 50px;
    transition: 1.2s;
    visibility: visible;
  
  }
  
  .block img {
    width: 100%;
    height: auto;
  }
  
  .block .text-service {
    font-size: 1em;
    padding: 2px 5px 9px 5px;
  }
  
  .text-hover {
    position: absolute;
    width: 100%;
    height: 100%;
    background-color: rgba(68, 68, 68, 0.815);
    visibility: hidden;
    top: 0;
  }
  
  .p {
    margin: 20px;
  }
  
  .text-hover p {
  
    font-size: 1.5em;
  }
  
  .block {
    position: relative;
  }
  
  .block:hover .text-service {
    visibility: hidden;
  }
  
  .block:hover .text-hover {
    visibility: visible;
    transition: 2s;
  }
  
  .banner {
    width: 100%;
    height: 1900px;
    background-image: url("@/assets/bg3.png");
  }
  
  .banner p{
    width: 380px;
  }
  
  .banner img{
    padding:30px 0px ;
  }
  
  .left{
    text-align: justify;
    direction: rtl;  
    margin-right: 30px;
    margin-top: 100px;
  }
  
  .left .text-banner{
    margin-right: 200px;
  }
  
  .right .text-banner{
    margin-left: 200px;
  }
  
  .right{
    text-align: justify;
    margin-right: 30px;
    margin-top: 100px;
  }
  
  .title-banner{
    font-size: 3em;
  }
  /*-----hover----- */
  
  .service:hover .left .text-banner{
    margin-right: 0px;
    transition: 2s;
  }
  
  .service:hover .right .text-banner{
    margin-left: 0px;
    transition: 4s;
  }
  


</style>
