import UserComponent from './UserComponent.js';

export default {
    template: `
    <div class="container-fluid">
        <section id="users-section" class="row justify-content-center">
            <div class="col-12" id="users-title">
                <h2>Users</h2>
            </div>

            <user v-for="(user, index) in userList" :liveuser="user" :key="index"></user>
        </section>
    </div>
    `,

    created: function() {
        this.fetchAllUsers();
    },

    data() {
        return {
            message: "This is the Users page",

            userList: []
        }
    },

    methods: {
        fetchAllUsers() {
          let url = `./admin/scripts/users.php?allusers=true`;
  
          fetch(url)
            .then(res => res.json())
            .then(data => {this.userList = data})
          .catch(function(error) {
            console.error(error);
          });
        }
    },
  
    components: {
        user: UserComponent
    }
}