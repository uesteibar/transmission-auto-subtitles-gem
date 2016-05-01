Gem::Specification.new do |s|
  s.name        = 'transmission-auto-subtitles'
  s.version     = '0.0.1'
  s.executables << 'transmission-auto-subtitles'
  s.date        = '2016-05-01'
  s.summary     = 'listen to transmission and download subtitles'
  s.description = 'Ruby gem that listens to your transmission-daemon and downloads subtitles for movies and series when finished.'
  s.authors     = ['uesteibar']
  s.email       = 'uesteibar@gmail.com'
  s.files       = [
    'lib/transmission_auto_subtitles.rb',
    'lib/models/opensubtitles_downloader.rb'
  ]
  s.homepage    = 'https://github.com/uesteibar/transmission-auto-subtitles-gem'
  s.license     = 'MIT'
  s.add_runtime_dependency 'opensubtitles', '0.0.2'
  s.add_runtime_dependency 'rtransmission', '0.3'
end
