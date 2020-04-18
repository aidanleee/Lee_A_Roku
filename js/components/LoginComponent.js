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
        
    }

}