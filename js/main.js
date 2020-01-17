
import HomeComponent from './components/HomeComponent.js';

let router = new VueRouter({

  routes: [
      { path: '/home', name: "home", component: HomeComponent },
  ]
});

const vm = new Vue({
 
  data: {
    genericMessage: "hello from the parent",
  },

  created: function() {
    console.log("parent is live");
  },

  methods: {
    
    }
  },

  router: router
}).$mount("#app");