export default {
    template: `
    <div class="container-fluid">
        <section class="row justify-content-center">
            <form id="login-form" class="col-12 col-lg-4">
                <input v-model="input.username" type="text" id="loginFormUsername" placeholder="Email">
                <input v-model="input.password" type="password" id="loginFormPassword" placeholder="Password">
                <div id="fp"><a href="">FORGOT PASSWORD</a></div>
                <input v-on:click.prevent="login()" type="submit" value="CONTINUE">
            </form>
        </section>
    </div>
     `,
 
     data() {
         return {
             input: {
                 username: "",
                 password: ""
             },

         }
     },
 
     methods: {
         login() {
            //console.log(this.$parent.mockAccount.username);
 
            if(this.input.username != "" && this.input.password != "") {
            // fetch the user from the DB
            // generate the form data
            let formData = new FormData();

             formData.append("username", this.input.username);
             formData.append("password", this.input.password);

             let url = `./admin/scripts/admin_login.php`;
 
             fetch(url, {
                    method: 'POST',
                    body: formData
                })
                 .then(res => res.json())
                 .then(data => {
                    if (typeof data != "object") { // means that we're not getting a user object back
                        console.warn(data);
                        console.error("authentication failed, please try again");
                        this.$emit("autherror", data);
                    } else {
                        this.$emit("authenticated", true, data[0]);
                        this.$router.replace({ name: "users" });
                    }
                })
             .catch(function(error) { 
                 console.log(error);
             });
        } else {
                 console.log("A username and password must be present");
            }
        }
    }
 }