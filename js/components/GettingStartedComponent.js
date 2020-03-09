export default {
    template: `
    <div class="container-fluid">
        <section id="profile-section" class="row justify-content-center">
            <div class="col-12" id="profile-title">
                <h2>Getting Started</h2>
            </div>
            <div class="col-12 col-lg-4">
                <div class="profile">Adults</div>
            </div>
            <div class="col-12 col-lg-4">
                <div class="profile">Kids</div>
            </div>
        </section>
    </div>
    `,

    data() {
        return {
            message: "This is the Getting Started page"
        }
    }
}