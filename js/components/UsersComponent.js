import UserComponent from './UserComponent.js';

export default {
	template: `
	<div class="container-fluid">
		<div class="row">
			<div class="col-12 profileHeading">
				<h2>{{ message }}</h2>
			</div>
		</div>
		<div class="row">
			<user v-for="(user, index) in userList" :liveuser="user" :key="index"></user>   
		</div>
	</div>
	`,

	created: function() {
	  //debugger;
	  this.fetchAllUsers();
	},

	data() {
	  return {
		message: `Choose your profile`,

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