export default {
    template: `
    <div class="container-fluid">
        <section id="users-section" class="row justify-content-center">
            <div class="col-12" id="users-title">
                <h2>Users</h2>
            </div>
            <div class="col-6 lc col-lg-3">
                <div class="user-card"><span>Peter</span></div>
            </div>
            <div class="col-6 rc col-lg-3">
                <div class="user-card"><span>Tracie</span></div>
            </div>
            <div class="col-6 lc col-lg-3">
                <div class="user-card"><span>Paris</span></div>
            </div>
            <div class="col-6 rc col-lg-3">
                <div class="user-card"><span>Aidan</span></div>
            </div>
        </section>
    </div>
    `,

    data() {
        return {
            message: "This is the Users page"
        }
    }
}