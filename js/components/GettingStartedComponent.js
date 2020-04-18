export default {
    template: `
    <div class="container-fluid">
        <section id="profile-section" class="row justify-content-center">
            <div class="col-12" id="profile-title">
                <h2>Getting Started</h2>
            </div>
            <div class="col-12 col-lg-4">
                <div @click="navToHome()" class="profile adult">Adults</div>
            </div>
            <div class="col-12 col-lg-4">
                <div @click="navToKids()" class="profile kids">Kids</div>
            </div>
        </section>
    </div>
    `,

    data() {
        return {
            message: "This is the Getting Started page"
        }
    },

    methods: {

        navToKids() {            
            this.$router.push({ name: "kidsh", params: { currentuser: this.liveuser } });
            // set a localstorage session object so that we don't have to log back in on page refresh or after our initial login
            localStorage.setItem("cachedUser", JSON.stringify(this.liveuser)); 
        },

        navToHome() {            
            this.$router.push({ name: "home", params: { currentuser: this.liveuser } });
            // set a localstorage session object so that we don't have to log back in on page refresh or after our initial login
            localStorage.setItem("cachedUser", JSON.stringify(this.liveuser)); 
        }

     }
}