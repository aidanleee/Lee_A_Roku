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
                <img v-if="activeMediaType == 'video'" v-for="media in retrievedMedia" :src="'images/movies/' + media.movies_cover" alt="media thumb" @click="switchActiveMedia(media)" class="media-scroll">
                
                
                
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
            activeMediaType: "video",

            currentMediaDetials: {
                source: "ladytramp.mp4",
            },

            mediaTypes: [
                { description: "video", name: "Movies"  },
                { description: "audio", name: "Music" },
                { description: "television", name: "TV" }
            ],
            retrievedMedia: []
        }
    },

    created: function() {
        console.log("Home Component Live");
    },

    methods: {

    }
}
