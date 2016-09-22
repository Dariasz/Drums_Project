{"filter":false,"title":"DrumPlayer.js","tooltip":"/app/assets/javascripts/DrumPlayer.js","undoManager":{"mark":2,"position":2,"stack":[[{"start":{"row":0,"column":0},"end":{"row":32,"column":9},"action":"insert","lines":["var drums = {","    ","      samples: ['a', 'b', 'c', 'd', 'e', '1', '2', '3', '4', '5', '6','7'],","    ","      play(drum) {","        this.sounds[drum].load();","        return this.sounds[drum].play();","      },","      ","    ","      generateSounds() {","        this.sounds = this.samples.reduce( function(cache, sample) {","          cache[sample] = new Audio('/sounds/'+ sample + '.wav');","          return cache;","        }, {});","      },","    ","      bindKeys() {","        keyboardJS.bind(this.samples, (e) => { this.play(e.key) });  // test","      },","    ","      bindEvents() {","        var svg = document.getElementById('drumsSVG');","        var doc = svg.contentDocument;","        this.samples.forEach( (sample) => $(doc.getElementById('sample_' + sample)).click(() =>  drums.play(sample) ) );","      }","    }","    ","      document.getElementById('drumsSVG').addEventListener('load', function(){","          drums.generateSounds();","          drums.bindEvents();","          drums.bindKeys();","      });"],"id":1}],[{"start":{"row":0,"column":0},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":103}],[{"start":{"row":1,"column":0},"end":{"row":2,"column":0},"action":"insert","lines":["",""],"id":104}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":2,"column":0},"end":{"row":2,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1472645674755,"hash":"d36b7aedc5a6078306b6473b7018865dc45e9876"}