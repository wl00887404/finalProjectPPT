Reveal.initialize({
    //history: true,
    // More info https://github.com/hakimel/reveal.js#dependencies 
    transition: 'convex', // none/fade/slide/convex/concave/zoom
    // autoSlide: 8700,
    // dependencies: [{
    //         src: 'plugin/markdown/marked.js'
    //     },
    //     {
    //         src: 'plugin/markdown/markdown.js'
    //     },
    //     {
    //         src: 'plugin/notes/notes.js',
    //         async: true
    //     },
    //     {
    //         src: 'plugin/highlight/highlight.js',
    //         async: true,
    //         callback: function() {
    //             hljs.initHighlightingOnLoad();
    //         }
    //     }
    // ]
});
particlesJS.load('particles-js', 'particlesjs-config.json', function() {
    console.log('callback - particles.js config loaded');
});
Reveal.addEventListener('slidechanged', function(event) {
    if (Reveal.getPreviousSlide())
        Reveal.getPreviousSlide().classList.remove("animation")
    Reveal.getCurrentSlide().classList.add("animation")

});
