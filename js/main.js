
import LoginComponent from './components/LoginComponent.js';
import HomeComponent from './components/HomeComponent.js';
import UsersComponent from './components/UsersComponent.js';
import GettingStartedComponent from './components/GettingStartedComponent.js';
import AdminComponent from './components/AdminComponent.js';

let router = new VueRouter({

  routes: [
      { path: '/', name: 'home', component: HomeComponent },
      { path: '/login', name: 'login', component: LoginComponent },
      { path: '/users', name: 'users', component: UsersComponent },
      { path: '/gettingstarted', name: 'gettingstarted', component: GettingStartedComponent },
      { path: '/admin', name: 'admin', component: AdminComponent },
  ]
});

const vm = new Vue({
  el: "#app",
  data: {
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
  },

  router: router
});