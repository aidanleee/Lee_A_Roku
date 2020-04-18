
import LoginComponent from './components/LoginComponent.js';
import HomeComponent from './components/HomeComponent.js';
import UsersComponent from './components/UsersComponent.js';
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
    }
  },

  router: router
}).$mount("#app");