# Wavesurfer Gem for Rails

[wavesurfer.js](http://www.wavesurfer.fm/) for the Rails asset pipeline.

## Installation

Add this line to your application's Gemfile:

    gem 'wavesurfer'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install wavesurfer

Add next lines to your application.js file:
    
    //= require src/wavesurfer
    //= require src/util
    //= require src/webaudio
    //= require src/mediaelement
    //= require src/drawer
    //= require src/drawer.canvas

    or include all files above with single line
    
    //= require wavesurfer

Also can include wavesurfer plugins:

    //= require plugin/wavesurfer.elan
    //= require plugin/wavesurfer.microphone
    //= require plugin/wavesurfer.minimap
    //= require plugin/wavesurfer.regions
    //= require plugin/wavesurfer.spectrogram
    //= require plugin/wavesurfer.timeline

    or include all plugins above with single line
    
    //= require wavesurfer-plugins

## Usage

    var wavesurfer = Object.create(WaveSurfer);

    wavesurfer.init({
        container: document.querySelector('#wave'),
        waveColor: 'violet',
        progressColor: 'purple'
    });

    wavesurfer.on('ready', function () {
        wavesurfer.play();
    });

    wavesurfer.load('example/media/demo.mp3');

Check out the [demo and docs](https://github.com/katspaugh/wavesurfer.js).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Changelog

<ul>
    <li>22.04.15: Released gem v.0.0.1</li>
    <ul>
        <li>plugin version: 1.0.26</li>
    </ul>
    <li>29.04.15: Released gem v.0.0.2</li>
    <ul>
        <li>plugin version: 1.0.27</li>
    </ul>
</ul>

## Contributors

[Viktor Oleksyn](https://github.com/bartezic)

### License

Available under the MIT License.
