export default {
    props: ['currentuser'],

    template: `
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 col-lg-2" id="home-menu">
                <ul>
                <li v-for="media in mediaTypes" :data-type="media.description" @click="loadMedia(null, media.description)">
                
                <span class="d-none d-md-block">{{ media.name }}</span>
            </li>
                </ul>
                    
            </div>
            <div class="col-12 col-lg-10" id="content">

        <!-- Movies -->
        <div v-if="activeMediaType == 'video' && retrievedMedia.length > 0" id="preview" class="preview">
            <div class="row movieInfo">
                
                <div class="col-6 col-lg-3">
                    <img :src="'images/video/' + currentMediaDetails.movies_cover">
                </div>

                <div class="col-6 col-lg-9">
                    <div class="row">
                        <p class="col-12 col-lg-6 infoTitle">{{currentMediaDetails.movies_title}}</p>
                        <p class="col-3 col-lg-2 infoYear">{{currentMediaDetails.movies_year}}</p>
                        <p class="col-9 col-lg-4 infoRuntime">{{currentMediaDetails.movies_runtime}}</p>
                    </div>

                    <p class="infoDesc" v-html="currentMediaDetails.movies_storyline"></p>
                    <br>
                    <button v-on:click="showLightBox" id="play-bttn">Play</button>
                </div>
            </div>
            <div class="lightbox">
                <span v-on:click="closeLightBox">X</span>
                <video autoplay controls muted :src="'video/' + currentMediaDetails.movies_trailer"></video>
            </div>
        </div>

        <section class="row library" id="media-section">
            <div class="col-12">
                <h2>Movies</h2>
            </div>
            <div class="col-12 scroll">
                <img v-if="activeMediaType == 'video'" v-for="media in retrievedMedia" :src="'images/video/' + media.movies_cover" alt="media thumb" @click="switchActiveMedia(media)" class="media-scroll">
                
            </div>
        </section>

        <!-- TV -->
        <div v-if="activeMediaType == 'television' && retrievedMedia.length > 0" id="preview" class="preview">
            <div class="row movieInfo">
                
                <div class="col-6 col-lg-3">
                    <img :src="'images/television/' + currentMediaDetails.tv_cover">
                </div>

                <div class="col-6 col-lg-9">
                    <div class="row">
                        <p class="col-12 col-lg-6 infoTitle">{{currentMediaDetails.tv_title}}</p>
                        <p class="col-3 col-lg-2 infoYear">{{currentMediaDetails.tv_year}}</p>
                        <p class="col-9 col-lg-4 infoRuntime">{{currentMediaDetails.tv_runtime}}</p>
                    </div>

                    <p class="infoDesc" v-html="currentMediaDetails.tv_storyline"></p>
                    <br>
                    <button v-on:click="showLightBox" id="play-bttn">Play</button>
                </div>
            </div>
            <div class="lightbox">
                <span v-on:click="closeLightBox">X</span>
                <video autoplay controls muted :src="'video/' + currentMediaDetails.tv_trailer"></video>
            </div>
        </div>

        <section class="row library" id="media-section">
            <div class="col-12">
                <h2></h2>
            </div>
            <div class="col-12 scroll">
                <img v-if="activeMediaType == 'television'" v-for="media in retrievedMedia" :src="'images/television/' + media.tv_cover" alt="media thumb" @click="switchActiveMedia(media)" class="media-scroll">
                
            </div>
        </section>





        <!-- Audio -->
        <div v-if="activeMediaType == 'audio' && retrievedMedia.length > 0" id="preview" class="preview">
            <div class="row movieInfo">
                
                <div class="col-6 col-lg-3">
                    <img :src="'images/audio/' + currentMediaDetails.audio_cover">
                </div>

                <div class="col-6 col-lg-9">
                    <div class="row">
                        <p class="col-12 col-lg-6 infoTitle">{{currentMediaDetails.audio_title}}</p>
                        <p class="col-3 col-lg-2 infoYear">{{currentMediaDetails.audio_year}}</p>
                        <p class="col-9 col-lg-4 infoRuntime">{{currentMediaDetails.audio_runtime}}</p>
                    </div>

                    <p class="infoDesc" v-html="currentMediaDetails.audio_storyline"></p>
                    <br>
                    <button v-on:click="showLightBox" id="play-bttn">Play</button>
                </div>
            </div>
            <div class="lightbox">
                <span v-on:click="closeLightBox">X</span>
                <audio autoplay controls muted :src="'audio/' + currentMediaDetails.audio_src"></audio>
            </div>
        </div>

        <section class="row library" id="media-section">
            <div class="col-12">
                <h2>Music</h2>
            </div>
            <div class="col-12 scroll">
                <img v-if="activeMediaType == 'audio'" v-for="media in retrievedMedia" :src="'images/audio/' + media.audio_cover" alt="media thumb" @click="switchActiveMedia(media)" class="media-scroll">
                
            </div>
        </section>











        <section class="row library" id="genres-section">
            <div class="col-12">
                <h2>Genres</h2>
            </div>
            <div class="col-12 scroll">
                <a href="50" @click.prevent="loadMedia('50', null)" class="genres-scroll"><img src="images/50.jpg" alt=""></a>
                <a href="60" @click.prevent="loadMedia('60', null)" class="genres-scroll"><img src="images/60.jpg" alt=""></a>
                <a href="70" @click.prevent="loadMedia('70', null)" class="genres-scroll"><img src="images/70.jpg" alt=""></a>
                <a href="80" @click.prevent="loadMedia('80', null)" class="genres-scroll"><img src="images/80.jpg" alt=""></a>
                <a href="90" @click.prevent="loadMedia('90', null)" class="genres-scroll"><img src="images/90.jpg" alt=""></a>
            </div>
        </section>

            </div>
        </div>
    </div> 
    `,

    data() {
        return {
            // set the default to video -> will get a random video via query on create
            activeMediaType: "video",

            // push first (or random) media object here (selected / filtered on create)
            currentMediaDetails: { 
                source: "avengers.mp4",
            },

            // could add more media types here in future
            mediaTypes: [
                { description: "video", name: "Movies"  },
                { description: "audio", name: "Music" },
                { description: "television", name: "TV" }
            ],

            retrievedMedia: [], // retrievedProjects: [];

            // controls mute / unmute for video element
            vidActive: false
        }

    },

    created: function() {
        console.log('params:', this.$route.params);

        this.loadMedia(null, "video");
    },

    methods: {

        loadMedia(filter, mediaType) {
            // set the active media type
            if (this.activeMediaType !== mediaType && mediaType !== null) {
                this.activeMediaType = mediaType;
            }
            // build the url based on any filter we pass in (will need to expand on this for audio)

            let url = (filter == null) ? `./admin/index.php?media=${this.activeMediaType}` : `./admin/index.php?media=${this.mediaType}&&filter=${filter}`;

            fetch(url)
                .then(res => res.json())
                .then(data => {                    
                    // we're gettin them all, dump it all in the media container
                    this.retrievedMedia = data;
                    // grab the first one in the list and make it active
                    this.currentMediaDetails = data[0];                  
                })
            .catch(function(error) {
                console.error(error);
            });
        },

        switchActiveMedia(media) {
            console.log(media);

            this.currentMediaDetails = media;
        },

        showLightBox() {
            document.querySelector(".lightbox").classList.add('show-lightbox');
        },

        closeLightBox() {
            document.querySelector(".lightbox").classList.remove('show-lightbox');
        },
        
    }
}