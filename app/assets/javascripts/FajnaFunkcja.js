var drums = {
  samples: ['a', 'b', 'c', 'd', 'e', '1', '2', '3', '4', '5', '6'],

  play(drum) {
    return this.sounds[drum].play();
  },

  generateSounds() {
    this.sounds = this.samples.reduce( function(cache, sample) {
      cache[sample] = new Audio('/sounds/'+ sample + '.wav');
      return cache;
    }, {});
  },

  bindKeys() {
    keyboardJS.bind(this.samples, (e) => { this.play(e.key) });
  },

  bindEvents() {
    var svg = document.getElementById('drumsSVG');
    var doc = svg.contentDocument;
    this.samples.forEach( (sample) => $(doc.getElementById('sample_' + sample)).click(() => drums.play(sample)));
  }
}

  document.getElementById('drumsSVG').addEventListener('load', function(){
      drums.generateSounds();
      drums.bindEvents();
      drums.bindKeys();
  });
