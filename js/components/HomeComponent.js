export default {
    template: `
    <div class="container-fluid">
        <section class="row library" id="my-list-section">
            <div class="col-12">
                <h2>My List</h2>
            </div>
            <div class="col-12 scroll">
                <a href="" class="my-list-scroll"><img src="images/" alt=""></a>
                <a href="" class="my-list-scroll"><img src="images/" alt=""></a>
                <a href="" class="my-list-scroll"><img src="images/" alt=""></a>
                <a href="" class="my-list-scroll"><img src="images/" alt=""></a>
                <a href="" class="my-list-scroll"><img src="images/" alt=""></a>
                <a href="" class="my-list-scroll"><img src="images/" alt=""></a>
            </div>
        </section>

        <section class="row library" id="media-section">
            <div class="col-12">
                <h2>Movies</h2> <!-- {{ mediaType }}-->
            </div>
            <div class="col-12 scroll">
                <a href="#" class="media-scroll"><img src="images/" alt=""></a>
                <a href="#" class="media-scroll"><img src="images/" alt=""></a>
                <a href="#" class="media-scroll"><img src="images/" alt=""></a>
                <a href="#" class="media-scroll"><img src="images/" alt=""></a>
                <a href="#" class="media-scroll"><img src="images/" alt=""></a>
                <a href="#" class="media-scroll"><img src="images/" alt=""></a>
            </div>
        </section>

        <section class="row library" id="genres-section">
            <div class="col-12">
                <h2>Genres</h2>
            </div>
            <div class="col-12 scroll">
                <a href="#" class="genres-scroll"><img src="images/" alt=""></a>
                <a href="#" class="genres-scroll"><img src="images/" alt=""></a>
                <a href="#" class="genres-scroll"><img src="images/" alt=""></a>
                <a href="#" class="genres-scroll"><img src="images/" alt=""></a>
                <a href="#" class="genres-scroll"><img src="images/" alt=""></a>
            </div>
        </section>
    </div>
    `,

    data() {
        return {
            message: "This is the home page."
        }
    }
}
