export default {
    template: `
    <div class="container-fluid">
        <section class="row justify-content-center">
            <form id="login-form" class="col-12 col-lg-4">
                <input type="text" name="" id="" placeholder="Email">
                <input type="password" name="" id="" placeholder="Password">
                <div id="fp"><a href="">FORGOT PASSWORD</a></div>
                <input type="submit" value="CONTINUE">
            </form>
        </section>
    </div>
    `,

    data() {
        return {
            message: "This is the Login page"
        }
    },
}