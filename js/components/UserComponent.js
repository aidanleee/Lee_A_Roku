export default {
    props: ['liveuser'],

    template: `
    <div @click="navToUserProfile()" id="user-profile" class="col-6 col-lg-3">
        <div id="user-icon"><span>{{ liveuser.finitial }}</span></div>
        <span id="user-name">{{ liveuser.fname }}</span>
    </div>
        
    `,

    methods: {
        navToUserProfile() {
            this.$router.push({ name: "gettingstarted", params: { currentuser: this.liveuser } });
            localStorage.setItem("cachedUser", JSON.stringify(this.liveuser));
        }
    }
}