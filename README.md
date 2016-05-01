# transmission-auto-subtitles-gem
Ruby gem that listens to your transmission-daemon and downloads subtitles for movies and series when finished.

## transmission-auto-subtitles

The transmission-auto-subtitles gem provide a simple script to listen to the running transmission-daemon and download the subtitles for your video file when it's downloaded.

### Installation

    $ gem install transmission-auto-subtitles

### Usage

First you need `transmission-daemon` running

    $ transmission-daemon

Then just execute the command and it will start listening

    $ transmission-auto-subtitles


### TODO

- [ ] Support for transmission user and password
- [ ] Support for different subtitle languages (only english for now)


### Other comments

Quickly built for personal use. Code is ugly, specs are missing.
