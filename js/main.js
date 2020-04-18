
import UsersComponent from './components/UsersComponent.js';
import LoginComponent from './components/LoginComponent.js';
import HomeComponent from './components/HomeComponent.js';
import GettingStartedComponent from './components/GettingStartedComponent.js';
import AdminComponent from './components/AdminComponent.js';

let router = new VueRouter({

  routes: [
      { path: '/', redirect: { name: "login"} },
      { path: '/login', name: 'login', component: LoginComponent },
      { path: '/users', name: 'users', component: UsersComponent },
      { path: '/gettingstarted', name: 'gettingstarted', component: GettingStartedComponent },
      { path: '/home', name: 'home', component: HomeComponent, props: true },
      { path: '/admin', name: 'admin', component: AdminComponent },
  ]
});

const vm = new Vue({

  data: {
    authenticated: false,
    administrator: false,
    hidden: false,

    genericMessage: "hello from the parent",

    user: [],
  },

  created: function() {
    console.log("parent is live");

    
  },

  methods: {
    openNav() {
      document.getElementById("mySidenav").style.width = "250px";
    },

    closeNav() {
        document.getElementById("mySidenav").style.width = "0";
    },

    setAuthenticated(status, data) {
      this.authenticated = status;
      this.user = data;
    },

    logout() {
      // delete local session
      if (localStorage.getItem("cachedUser")) {
        localStorage.removeItem("cachedUser");
      }
      // push user back to login page
      this.$router.push({ path: "/login" });
      this.authenticated = false;
      
      
    }

    
  },

  router: router
}).$mount("#app");

router.beforeEach((to, from, next) => {
  console.log('router guard fired!', to, from, vm.authenticated);

  if (vm.authenticated == false) {
    next("/login");
  } else {
    next();
  }
});